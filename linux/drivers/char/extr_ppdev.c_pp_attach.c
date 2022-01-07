
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {size_t number; int dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,size_t) ;
 int PP_MAJOR ;
 struct device* device_create (int ,int ,int ,int *,char*,size_t) ;
 struct device** devices ;
 int ppdev_class ;
 int pr_err (char*,size_t) ;

__attribute__((used)) static void pp_attach(struct parport *port)
{
 struct device *ret;

 if (devices[port->number])
  return;

 ret = device_create(ppdev_class, port->dev,
       MKDEV(PP_MAJOR, port->number), ((void*)0),
       "parport%d", port->number);
 if (IS_ERR(ret)) {
  pr_err("Failed to create device parport%d\n",
         port->number);
  return;
 }
 devices[port->number] = ret;
}
