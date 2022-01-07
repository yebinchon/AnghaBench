
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct ports_device {int control_work; } ;
struct TYPE_2__ {struct ports_device* priv; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void control_intr(struct virtqueue *vq)
{
 struct ports_device *portdev;

 portdev = vq->vdev->priv;
 schedule_work(&portdev->control_work);
}
