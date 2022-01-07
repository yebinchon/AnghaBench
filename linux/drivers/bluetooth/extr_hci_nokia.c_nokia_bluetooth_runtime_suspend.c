
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct device {int dummy; } ;


 int nokia_flow_control (struct serdev_device*,int) ;
 struct serdev_device* to_serdev_device (struct device*) ;

__attribute__((used)) static int nokia_bluetooth_runtime_suspend(struct device *dev)
{
 struct serdev_device *serdev = to_serdev_device(dev);

 nokia_flow_control(serdev, 0);
 return 0;
}
