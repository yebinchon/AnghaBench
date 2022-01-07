
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3disk_private {int gendisk; int tag_set; int queue; } ;
struct ps3_system_bus_device {int core; } ;
struct TYPE_2__ {int core; } ;
struct ps3_storage_device {struct ps3disk_private* bounce_buf; TYPE_1__ sbd; } ;


 int MINOR (int ) ;
 int PS3DISK_MINORS ;
 int __clear_bit (int,int *) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (int ) ;
 int dev_notice (int *,char*) ;
 int disk_devt (int ) ;
 int kfree (struct ps3disk_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ps3disk_private* ps3_system_bus_get_drvdata (TYPE_1__*) ;
 int ps3_system_bus_set_drvdata (struct ps3_system_bus_device*,int *) ;
 int ps3disk_mask ;
 int ps3disk_mask_mutex ;
 int ps3disk_sync_cache (struct ps3_storage_device*) ;
 int ps3stor_teardown (struct ps3_storage_device*) ;
 int put_disk (int ) ;
 struct ps3_storage_device* to_ps3_storage_device (int *) ;

__attribute__((used)) static int ps3disk_remove(struct ps3_system_bus_device *_dev)
{
 struct ps3_storage_device *dev = to_ps3_storage_device(&_dev->core);
 struct ps3disk_private *priv = ps3_system_bus_get_drvdata(&dev->sbd);

 mutex_lock(&ps3disk_mask_mutex);
 __clear_bit(MINOR(disk_devt(priv->gendisk)) / PS3DISK_MINORS,
      &ps3disk_mask);
 mutex_unlock(&ps3disk_mask_mutex);
 del_gendisk(priv->gendisk);
 blk_cleanup_queue(priv->queue);
 blk_mq_free_tag_set(&priv->tag_set);
 put_disk(priv->gendisk);
 dev_notice(&dev->sbd.core, "Synchronizing disk cache\n");
 ps3disk_sync_cache(dev);
 ps3stor_teardown(dev);
 kfree(dev->bounce_buf);
 kfree(priv);
 ps3_system_bus_set_drvdata(_dev, ((void*)0));
 return 0;
}
