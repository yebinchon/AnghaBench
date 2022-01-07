
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {TYPE_1__* spec; scalar_t__ image_format; scalar_t__ opts; } ;
struct TYPE_2__ {int * image_id; } ;


 int kfree (int *) ;
 int rbd_dev_unprobe (struct rbd_device*) ;
 int rbd_unregister_watch (struct rbd_device*) ;

__attribute__((used)) static void rbd_dev_image_release(struct rbd_device *rbd_dev)
{
 rbd_dev_unprobe(rbd_dev);
 if (rbd_dev->opts)
  rbd_unregister_watch(rbd_dev);
 rbd_dev->image_format = 0;
 kfree(rbd_dev->spec->image_id);
 rbd_dev->spec->image_id = ((void*)0);
}
