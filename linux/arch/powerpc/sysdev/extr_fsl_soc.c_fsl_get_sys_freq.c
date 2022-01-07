
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_type (int *,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

u32 fsl_get_sys_freq(void)
{
 static u32 sysfreq = -1;
 struct device_node *soc;

 if (sysfreq != -1)
  return sysfreq;

 soc = of_find_node_by_type(((void*)0), "soc");
 if (!soc)
  return -1;

 of_property_read_u32(soc, "clock-frequency", &sysfreq);
 if (sysfreq == -1 || !sysfreq)
  of_property_read_u32(soc, "bus-frequency", &sysfreq);

 of_node_put(soc);
 return sysfreq;
}
