
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int const state; int dev; int otherend; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int EINVAL ;




 int device_unregister (int *) ;
 int xenbus_dev_fatal (struct xenbus_device*,int ,char*) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void backend_changed(struct xenbus_device *dev,
  enum xenbus_state backend_state)
{
 switch (backend_state) {
 case 128:
 case 129:
  if (dev->state == 129)
   break;

  if (!xenbus_read_unsigned(dev->otherend, "feature-protocol-v2",
       0)) {
   xenbus_dev_fatal(dev, -EINVAL,
     "vTPM protocol 2 required");
   return;
  }
  xenbus_switch_state(dev, 129);
  break;

 case 130:
 case 131:
  device_unregister(&dev->dev);
  xenbus_frontend_closed(dev);
  break;
 default:
  break;
 }
}
