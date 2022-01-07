
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {int baseaddr; scalar_t__ irq; int fsm_tasklet; int tag_set; scalar_t__ queue; scalar_t__ gd; } ;


 int blk_cleanup_queue (scalar_t__) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (scalar_t__) ;
 int free_irq (scalar_t__,struct ace_device*) ;
 int iounmap (int ) ;
 int put_disk (scalar_t__) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void ace_teardown(struct ace_device *ace)
{
 if (ace->gd) {
  del_gendisk(ace->gd);
  put_disk(ace->gd);
 }

 if (ace->queue) {
  blk_cleanup_queue(ace->queue);
  blk_mq_free_tag_set(&ace->tag_set);
 }

 tasklet_kill(&ace->fsm_tasklet);

 if (ace->irq)
  free_irq(ace->irq, ace);

 iounmap(ace->baseaddr);
}
