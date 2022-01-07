
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bounce_pfn; } ;
struct request_queue {int bounce_gfp; TYPE_1__ limits; } ;
struct bio {int dummy; } ;
typedef int mempool_t ;


 int BUG_ON (int) ;
 int GFP_DMA ;
 int __blk_queue_bounce (struct request_queue*,struct bio**,int *) ;
 int bio_has_data (struct bio*) ;
 scalar_t__ blk_max_pfn ;
 int isa_page_pool ;
 int mempool_initialized (int *) ;
 int page_pool ;

void blk_queue_bounce(struct request_queue *q, struct bio **bio_orig)
{
 mempool_t *pool;




 if (!bio_has_data(*bio_orig))
  return;






 if (!(q->bounce_gfp & GFP_DMA)) {
  if (q->limits.bounce_pfn >= blk_max_pfn)
   return;
  pool = &page_pool;
 } else {
  BUG_ON(!mempool_initialized(&isa_page_pool));
  pool = &isa_page_pool;
 }




 __blk_queue_bounce(q, bio_orig, pool);
}
