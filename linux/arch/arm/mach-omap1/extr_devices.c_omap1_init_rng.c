
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_is_omap16xx () ;
 int omap1_rng_device ;
 int platform_device_register (int *) ;

__attribute__((used)) static void omap1_init_rng(void)
{
 if (!cpu_is_omap16xx())
  return;

 (void) platform_device_register(&omap1_rng_device);
}
