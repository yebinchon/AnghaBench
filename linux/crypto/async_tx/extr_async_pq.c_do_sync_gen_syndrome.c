
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct async_submit_ctl {void** scribble; int flags; } ;
struct TYPE_2__ {int (* gen_syndrome ) (int,size_t,void**) ;int (* xor_syndrome ) (int,int,int,size_t,void**) ;} ;


 int ASYNC_TX_PQ_XOR_DST ;
 int BUG_ON (int) ;
 int async_tx_sync_epilog (struct async_submit_ctl*) ;
 void* page_address (struct page*) ;
 TYPE_1__ raid6_call ;
 scalar_t__ raid6_empty_zero_page ;
 int stub1 (int,int,int,size_t,void**) ;
 int stub2 (int,size_t,void**) ;

__attribute__((used)) static void
do_sync_gen_syndrome(struct page **blocks, unsigned int offset, int disks,
       size_t len, struct async_submit_ctl *submit)
{
 void **srcs;
 int i;
 int start = -1, stop = disks - 3;

 if (submit->scribble)
  srcs = submit->scribble;
 else
  srcs = (void **) blocks;

 for (i = 0; i < disks; i++) {
  if (blocks[i] == ((void*)0)) {
   BUG_ON(i > disks - 3);
   srcs[i] = (void*)raid6_empty_zero_page;
  } else {
   srcs[i] = page_address(blocks[i]) + offset;
   if (i < disks - 2) {
    stop = i;
    if (start == -1)
     start = i;
   }
  }
 }
 if (submit->flags & ASYNC_TX_PQ_XOR_DST) {
  BUG_ON(!raid6_call.xor_syndrome);
  if (start >= 0)
   raid6_call.xor_syndrome(disks, start, stop, len, srcs);
 } else
  raid6_call.gen_syndrome(disks, len, srcs);
 async_tx_sync_epilog(submit);
}
