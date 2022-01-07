
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct async_submit_ctl {void** scribble; int flags; } ;


 int ASYNC_TX_XOR_ZERO_DST ;
 int MAX_XOR_BLOCKS ;
 int async_tx_sync_epilog (struct async_submit_ctl*) ;
 int memset (void*,int ,size_t) ;
 int min (int,int ) ;
 void* page_address (struct page*) ;
 int xor_blocks (int,size_t,void*,void**) ;

__attribute__((used)) static void
do_sync_xor(struct page *dest, struct page **src_list, unsigned int offset,
     int src_cnt, size_t len, struct async_submit_ctl *submit)
{
 int i;
 int xor_src_cnt = 0;
 int src_off = 0;
 void *dest_buf;
 void **srcs;

 if (submit->scribble)
  srcs = submit->scribble;
 else
  srcs = (void **) src_list;


 for (i = 0; i < src_cnt; i++)
  if (src_list[i])
   srcs[xor_src_cnt++] = page_address(src_list[i]) + offset;
 src_cnt = xor_src_cnt;

 dest_buf = page_address(dest) + offset;

 if (submit->flags & ASYNC_TX_XOR_ZERO_DST)
  memset(dest_buf, 0, len);

 while (src_cnt > 0) {

  xor_src_cnt = min(src_cnt, MAX_XOR_BLOCKS);
  xor_blocks(xor_src_cnt, len, dest_buf, &srcs[src_off]);


  src_cnt -= xor_src_cnt;
  src_off += xor_src_cnt;
 }

 async_tx_sync_epilog(submit);
}
