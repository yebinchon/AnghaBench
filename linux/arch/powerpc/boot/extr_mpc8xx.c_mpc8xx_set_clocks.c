
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dt_fixup_cpu_clocks (int,int,int) ;
 void* finddevice (char*) ;
 int setprop (void*,char*,int*,int) ;

void mpc8xx_set_clocks(u32 sysclk)
{
 void *node;

 dt_fixup_cpu_clocks(sysclk, sysclk / 16, sysclk);

 node = finddevice("/soc/cpm");
 if (node)
  setprop(node, "clock-frequency", &sysclk, 4);

 node = finddevice("/soc/cpm/brg");
 if (node)
  setprop(node, "clock-frequency", &sysclk, 4);
}
