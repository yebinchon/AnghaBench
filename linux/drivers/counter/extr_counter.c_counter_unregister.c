
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct counter_device {TYPE_1__* device_state; } ;
struct TYPE_2__ {int dev; } ;


 int device_del (int *) ;

void counter_unregister(struct counter_device *const counter)
{
 if (counter)
  device_del(&counter->device_state->dev);
}
