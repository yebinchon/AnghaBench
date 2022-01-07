
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * platform_data; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int machine_is_akita () ;
 int machine_is_borzoi () ;
 int machine_is_spitz () ;
 int platform_device_add (TYPE_2__*) ;
 TYPE_2__* platform_device_alloc (char*,int) ;
 int platform_device_put (TYPE_2__*) ;
 int spitz_pm_machinfo ;
 TYPE_2__* spitzpm_device ;

__attribute__((used)) static int spitzpm_init(void)
{
 int ret;

 if (!machine_is_spitz() && !machine_is_akita()
   && !machine_is_borzoi())
  return -ENODEV;

 spitzpm_device = platform_device_alloc("sharpsl-pm", -1);
 if (!spitzpm_device)
  return -ENOMEM;

 spitzpm_device->dev.platform_data = &spitz_pm_machinfo;
 ret = platform_device_add(spitzpm_device);

 if (ret)
  platform_device_put(spitzpm_device);

 return ret;
}
