
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int phandle ;


 int prom_getchild (int ) ;
 int prom_getint (int ,char*) ;
 unsigned long prom_getintdefault (int ,char*,int ) ;
 int prom_getproperty (int ,char*,char*,int) ;
 int prom_getsibling (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static unsigned long cpuid_to_freq(phandle node, int cpuid)
{
 bool is_cpu_node = 0;
 unsigned long freq = 0;
 char type[128];

 if (!node)
  return freq;

 if (prom_getproperty(node, "device_type", type, sizeof(type)) != -1)
  is_cpu_node = (strcmp(type, "cpu") == 0);


 if (is_cpu_node && (prom_getint(node, "upa-portid") == cpuid ||
       prom_getint(node, "cpuid") == cpuid))
  freq = prom_getintdefault(node, "clock-frequency", 0);
 if (!freq)
  freq = cpuid_to_freq(prom_getchild(node), cpuid);
 if (!freq)
  freq = cpuid_to_freq(prom_getsibling(node), cpuid);

 return freq;
}
