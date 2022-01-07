
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vio_dev {int dev; } ;
struct TYPE_4__ {int timer; } ;
struct vdc_port {TYPE_1__ vio; TYPE_2__* disk; int ldc_reset_timer_work; int ldc_reset_work; } ;
struct TYPE_5__ {int queue; } ;


 int blk_mq_stop_hw_queues (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cleanup_queue (int ) ;
 int del_gendisk (TYPE_2__*) ;
 int del_timer_sync (int *) ;
 struct vdc_port* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int flush_work (int *) ;
 int kfree (struct vdc_port*) ;
 int put_disk (TYPE_2__*) ;
 int vdc_free_tx_ring (struct vdc_port*) ;
 int vio_ldc_free (TYPE_1__*) ;

__attribute__((used)) static int vdc_port_remove(struct vio_dev *vdev)
{
 struct vdc_port *port = dev_get_drvdata(&vdev->dev);

 if (port) {
  blk_mq_stop_hw_queues(port->disk->queue);

  flush_work(&port->ldc_reset_work);
  cancel_delayed_work_sync(&port->ldc_reset_timer_work);
  del_timer_sync(&port->vio.timer);

  del_gendisk(port->disk);
  cleanup_queue(port->disk->queue);
  put_disk(port->disk);
  port->disk = ((void*)0);

  vdc_free_tx_ring(port);
  vio_ldc_free(&port->vio);

  dev_set_drvdata(&vdev->dev, ((void*)0));

  kfree(port);
 }
 return 0;
}
