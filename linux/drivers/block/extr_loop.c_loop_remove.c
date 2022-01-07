
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_disk; int tag_set; int lo_queue; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (int ) ;
 int kfree (struct loop_device*) ;
 int put_disk (int ) ;

__attribute__((used)) static void loop_remove(struct loop_device *lo)
{
 del_gendisk(lo->lo_disk);
 blk_cleanup_queue(lo->lo_queue);
 blk_mq_free_tag_set(&lo->tag_set);
 put_disk(lo->lo_disk);
 kfree(lo);
}
