
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;


 int D_NEGOTIATING ;
 unsigned long _drbd_bm_total_weight (struct drbd_device*) ;
 int get_ldev_if_state (struct drbd_device*,int ) ;
 int put_ldev (struct drbd_device*) ;

unsigned long drbd_bm_total_weight(struct drbd_device *device)
{
 unsigned long s;

 if (!get_ldev_if_state(device, D_NEGOTIATING))
  return 0;
 s = _drbd_bm_total_weight(device);
 put_ldev(device);
 return s;
}
