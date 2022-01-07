
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int corgipm_device ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void corgipm_exit(void)
{
 platform_device_unregister(corgipm_device);
}
