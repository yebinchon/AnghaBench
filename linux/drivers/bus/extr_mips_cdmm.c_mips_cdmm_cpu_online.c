
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_bus {int offline; int discovered; } ;


 long bus_for_each_dev (int *,int *,unsigned int*,int ) ;
 int mips_cdmm_bus_discover (struct mips_cdmm_bus*) ;
 int mips_cdmm_bustype ;
 int mips_cdmm_cpu_up_helper ;
 struct mips_cdmm_bus* mips_cdmm_get_bus () ;
 long mips_cdmm_setup (struct mips_cdmm_bus*) ;

__attribute__((used)) static int mips_cdmm_cpu_online(unsigned int cpu)
{
 struct mips_cdmm_bus *bus;
 long ret;

 bus = mips_cdmm_get_bus();
 ret = mips_cdmm_setup(bus);
 if (ret)
  return ret;


 bus->offline = 0;

 if (!bus->discovered)
  mips_cdmm_bus_discover(bus);
 else

  ret = bus_for_each_dev(&mips_cdmm_bustype, ((void*)0), &cpu,
           mips_cdmm_cpu_up_helper);

 return ret;
}
