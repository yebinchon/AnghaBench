
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct driver_data {int index; int * queue; TYPE_2__* disk; int tags; int dd_flag; TYPE_1__* pdev; } ;
struct TYPE_5__ {scalar_t__ queue; int disk_name; } ;
struct TYPE_4__ {int dev; } ;


 int MTIP_DDF_INIT_DONE_BIT ;
 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (TYPE_2__*) ;
 int dev_info (int *,char*,int ) ;
 int ida_free (int *,int ) ;
 int mtip_hw_shutdown (struct driver_data*) ;
 int put_disk (TYPE_2__*) ;
 int rssd_index_ida ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mtip_block_shutdown(struct driver_data *dd)
{
 mtip_hw_shutdown(dd);


 if (dd->disk) {
  dev_info(&dd->pdev->dev,
   "Shutting down %s ...\n", dd->disk->disk_name);

  if (test_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag))
   del_gendisk(dd->disk);
  if (dd->disk->queue) {
   blk_cleanup_queue(dd->queue);
   blk_mq_free_tag_set(&dd->tags);
  }
  put_disk(dd->disk);
  dd->disk = ((void*)0);
  dd->queue = ((void*)0);
 }

 ida_free(&rssd_index_ida, dd->index);
 return 0;
}
