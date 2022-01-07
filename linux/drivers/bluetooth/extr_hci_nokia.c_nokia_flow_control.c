
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;


 int serdev_device_set_flow_control (struct serdev_device*,int) ;
 int serdev_device_set_rts (struct serdev_device*,int) ;

__attribute__((used)) static void nokia_flow_control(struct serdev_device *serdev, bool enable)
{
 if (enable) {
  serdev_device_set_rts(serdev, 1);
  serdev_device_set_flow_control(serdev, 1);
 } else {
  serdev_device_set_flow_control(serdev, 0);
  serdev_device_set_rts(serdev, 0);
 }
}
