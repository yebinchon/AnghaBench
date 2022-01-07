
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct ports_device* priv; } ;
struct ports_device {int config_work; } ;


 int schedule_work (int *) ;
 int use_multiport (struct ports_device*) ;

__attribute__((used)) static void config_intr(struct virtio_device *vdev)
{
 struct ports_device *portdev;

 portdev = vdev->priv;

 if (!use_multiport(portdev))
  schedule_work(&portdev->config_work);
}
