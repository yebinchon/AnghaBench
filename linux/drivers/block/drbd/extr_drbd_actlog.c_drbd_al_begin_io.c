
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_interval {int dummy; } ;
struct drbd_device {int dummy; } ;


 int drbd_al_begin_io_commit (struct drbd_device*) ;
 scalar_t__ drbd_al_begin_io_prepare (struct drbd_device*,struct drbd_interval*) ;

void drbd_al_begin_io(struct drbd_device *device, struct drbd_interval *i)
{
 if (drbd_al_begin_io_prepare(device, i))
  drbd_al_begin_io_commit(device);
}
