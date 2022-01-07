
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {int shift; int count; int changed; int lock; int * page; } ;
typedef int sector_t ;


 int BB_ACK (int ) ;
 int BB_LEN (int ) ;
 int BB_MAKE (int,int,int) ;
 int BB_OFFSET (int ) ;
 int ENOSPC ;
 int MAX_BADBLOCKS ;
 int badblocks_update_acked (struct badblocks*) ;
 int memmove (int *,int *,int) ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;

int badblocks_clear(struct badblocks *bb, sector_t s, int sectors)
{
 u64 *p;
 int lo, hi;
 sector_t target = s + sectors;
 int rv = 0;

 if (bb->shift > 0) {






  s += (1<<bb->shift) - 1;
  s >>= bb->shift;
  target >>= bb->shift;
  sectors = target - s;
 }

 write_seqlock_irq(&bb->lock);

 p = bb->page;
 lo = 0;
 hi = bb->count;

 while (hi - lo > 1) {
  int mid = (lo + hi) / 2;
  sector_t a = BB_OFFSET(p[mid]);

  if (a < target)
   lo = mid;
  else
   hi = mid;
 }
 if (hi > lo) {




  if ((BB_OFFSET(p[lo]) + BB_LEN(p[lo]) > target) &&
      (BB_OFFSET(p[lo]) < target)) {

   int ack = BB_ACK(p[lo]);
   sector_t a = BB_OFFSET(p[lo]);
   sector_t end = a + BB_LEN(p[lo]);

   if (a < s) {

    if (bb->count >= MAX_BADBLOCKS) {
     rv = -ENOSPC;
     goto out;
    }
    memmove(p+lo+1, p+lo, (bb->count - lo) * 8);
    bb->count++;
    p[lo] = BB_MAKE(a, s-a, ack);
    lo++;
   }
   p[lo] = BB_MAKE(target, end - target, ack);

   hi = lo;
   lo--;
  }
  while (lo >= 0 &&
         (BB_OFFSET(p[lo]) + BB_LEN(p[lo]) > s) &&
         (BB_OFFSET(p[lo]) < target)) {

   if (BB_OFFSET(p[lo]) < s) {

    int ack = BB_ACK(p[lo]);
    sector_t start = BB_OFFSET(p[lo]);

    p[lo] = BB_MAKE(start, s - start, ack);

    break;
   }
   lo--;
  }



  if (hi - lo > 1) {
   memmove(p+lo+1, p+hi, (bb->count - hi) * 8);
   bb->count -= (hi - lo - 1);
  }
 }

 badblocks_update_acked(bb);
 bb->changed = 1;
out:
 write_sequnlock_irq(&bb->lock);
 return rv;
}
