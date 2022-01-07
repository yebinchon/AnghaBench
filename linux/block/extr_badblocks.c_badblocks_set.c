
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {int shift; int count; int changed; int unacked_exist; int lock; int * page; } ;
typedef int sector_t ;


 int BB_ACK (int ) ;
 int BB_LEN (int ) ;
 int BB_MAKE (int,int,int) ;
 int BB_MAX_LEN ;
 int BB_OFFSET (int ) ;
 int MAX_BADBLOCKS ;
 int badblocks_update_acked (struct badblocks*) ;
 int memmove (int *,int *,int) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

int badblocks_set(struct badblocks *bb, sector_t s, int sectors,
   int acknowledged)
{
 u64 *p;
 int lo, hi;
 int rv = 0;
 unsigned long flags;

 if (bb->shift < 0)

  return 1;

 if (bb->shift) {

  sector_t next = s + sectors;

  s >>= bb->shift;
  next += (1<<bb->shift) - 1;
  next >>= bb->shift;
  sectors = next - s;
 }

 write_seqlock_irqsave(&bb->lock, flags);

 p = bb->page;
 lo = 0;
 hi = bb->count;

 while (hi - lo > 1) {
  int mid = (lo + hi) / 2;
  sector_t a = BB_OFFSET(p[mid]);

  if (a <= s)
   lo = mid;
  else
   hi = mid;
 }
 if (hi > lo && BB_OFFSET(p[lo]) > s)
  hi = lo;

 if (hi > lo) {



  sector_t a = BB_OFFSET(p[lo]);
  sector_t e = a + BB_LEN(p[lo]);
  int ack = BB_ACK(p[lo]);

  if (e >= s) {

   if (s == a && s + sectors >= e)

    ack = acknowledged;
   else
    ack = ack && acknowledged;

   if (e < s + sectors)
    e = s + sectors;
   if (e - a <= BB_MAX_LEN) {
    p[lo] = BB_MAKE(a, e-a, ack);
    s = e;
   } else {



    if (BB_LEN(p[lo]) != BB_MAX_LEN)
     p[lo] = BB_MAKE(a, BB_MAX_LEN, ack);
    s = a + BB_MAX_LEN;
   }
   sectors = e - s;
  }
 }
 if (sectors && hi < bb->count) {



  sector_t a = BB_OFFSET(p[hi]);
  sector_t e = a + BB_LEN(p[hi]);
  int ack = BB_ACK(p[hi]);

  if (a <= s + sectors) {

   if (e <= s + sectors) {

    e = s + sectors;
    ack = acknowledged;
   } else
    ack = ack && acknowledged;

   a = s;
   if (e - a <= BB_MAX_LEN) {
    p[hi] = BB_MAKE(a, e-a, ack);
    s = e;
   } else {
    p[hi] = BB_MAKE(a, BB_MAX_LEN, ack);
    s = a + BB_MAX_LEN;
   }
   sectors = e - s;
   lo = hi;
   hi++;
  }
 }
 if (sectors == 0 && hi < bb->count) {


  sector_t a = BB_OFFSET(p[hi]);
  int lolen = BB_LEN(p[lo]);
  int hilen = BB_LEN(p[hi]);
  int newlen = lolen + hilen - (s - a);

  if (s >= a && newlen < BB_MAX_LEN) {

   int ack = BB_ACK(p[lo]) && BB_ACK(p[hi]);

   p[lo] = BB_MAKE(BB_OFFSET(p[lo]), newlen, ack);
   memmove(p + hi, p + hi + 1,
    (bb->count - hi - 1) * 8);
   bb->count--;
  }
 }
 while (sectors) {



  if (bb->count >= MAX_BADBLOCKS) {

   rv = 1;
   break;
  } else {
   int this_sectors = sectors;

   memmove(p + hi + 1, p + hi,
    (bb->count - hi) * 8);
   bb->count++;

   if (this_sectors > BB_MAX_LEN)
    this_sectors = BB_MAX_LEN;
   p[hi] = BB_MAKE(s, this_sectors, acknowledged);
   sectors -= this_sectors;
   s += this_sectors;
  }
 }

 bb->changed = 1;
 if (!acknowledged)
  bb->unacked_exist = 1;
 else
  badblocks_update_acked(bb);
 write_sequnlock_irqrestore(&bb->lock, flags);

 return rv;
}
