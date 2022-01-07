
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {scalar_t__ changed; int count; int lock; scalar_t__ unacked_exist; int * page; } ;
typedef int sector_t ;


 int BB_ACK (int ) ;
 int BB_LEN (int ) ;
 int BB_MAKE (int ,int,int) ;
 int BB_OFFSET (int ) ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;

void ack_all_badblocks(struct badblocks *bb)
{
 if (bb->page == ((void*)0) || bb->changed)

  return;
 write_seqlock_irq(&bb->lock);

 if (bb->changed == 0 && bb->unacked_exist) {
  u64 *p = bb->page;
  int i;

  for (i = 0; i < bb->count ; i++) {
   if (!BB_ACK(p[i])) {
    sector_t start = BB_OFFSET(p[i]);
    int len = BB_LEN(p[i]);

    p[i] = BB_MAKE(start, len, 1);
   }
  }
  bb->unacked_exist = 0;
 }
 write_sequnlock_irq(&bb->lock);
}
