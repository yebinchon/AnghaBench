
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_info {unsigned int nr_rings; int * rinfo; scalar_t__ rq; int connected; } ;


 int BLKIF_STATE_DISCONNECTED ;
 int BLKIF_STATE_SUSPENDED ;
 int blk_mq_stop_hw_queues (scalar_t__) ;
 int blkif_free_ring (int *) ;
 int kvfree (int *) ;

__attribute__((used)) static void blkif_free(struct blkfront_info *info, int suspend)
{
 unsigned int i;


 info->connected = suspend ?
  BLKIF_STATE_SUSPENDED : BLKIF_STATE_DISCONNECTED;

 if (info->rq)
  blk_mq_stop_hw_queues(info->rq);

 for (i = 0; i < info->nr_rings; i++)
  blkif_free_ring(&info->rinfo[i]);

 kvfree(info->rinfo);
 info->rinfo = ((void*)0);
 info->nr_rings = 0;
}
