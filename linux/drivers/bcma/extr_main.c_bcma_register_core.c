
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct bcma_device {int dev_registered; int dev; TYPE_1__ id; } ;
struct bcma_bus {int dummy; } ;


 int bcma_err (struct bcma_bus*,char*,int ) ;
 int device_register (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void bcma_register_core(struct bcma_bus *bus, struct bcma_device *core)
{
 int err;

 err = device_register(&core->dev);
 if (err) {
  bcma_err(bus, "Could not register dev for core 0x%03X\n",
    core->id.id);
  put_device(&core->dev);
  return;
 }
 core->dev_registered = 1;
}
