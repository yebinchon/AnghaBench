
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbd_device {TYPE_1__* disk; int tag_set; } ;
struct TYPE_2__ {int queue; } ;


 int blk_mq_quiesce_queue (int ) ;
 int blk_mq_tagset_busy_iter (int *,int ,int *) ;
 int blk_mq_unquiesce_queue (int ) ;
 int dev_dbg (int ,char*) ;
 int disk_to_dev (TYPE_1__*) ;
 int nbd_clear_req ;

__attribute__((used)) static void nbd_clear_que(struct nbd_device *nbd)
{
 blk_mq_quiesce_queue(nbd->disk->queue);
 blk_mq_tagset_busy_iter(&nbd->tag_set, nbd_clear_req, ((void*)0));
 blk_mq_unquiesce_queue(nbd->disk->queue);
 dev_dbg(disk_to_dev(nbd->disk), "queue cleared\n");
}
