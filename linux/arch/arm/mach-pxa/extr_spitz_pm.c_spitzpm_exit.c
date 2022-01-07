
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_unregister (int ) ;
 int spitzpm_device ;

__attribute__((used)) static void spitzpm_exit(void)
{
 platform_device_unregister(spitzpm_device);
}
