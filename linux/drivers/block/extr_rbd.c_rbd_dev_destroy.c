
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static void rbd_dev_destroy(struct rbd_device *rbd_dev)
{
 if (rbd_dev)
  put_device(&rbd_dev->dev);
}
