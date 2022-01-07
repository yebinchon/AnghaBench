
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_bus {int offline; } ;


 int IS_ERR (struct mips_cdmm_bus*) ;
 long bus_for_each_dev (int *,int *,unsigned int*,int ) ;
 int mips_cdmm_bustype ;
 int mips_cdmm_cpu_down_helper ;
 struct mips_cdmm_bus* mips_cdmm_get_bus () ;

__attribute__((used)) static int mips_cdmm_cpu_down_prep(unsigned int cpu)
{
 struct mips_cdmm_bus *bus;
 long ret;


 ret = bus_for_each_dev(&mips_cdmm_bustype, ((void*)0), &cpu,
          mips_cdmm_cpu_down_helper);





 bus = mips_cdmm_get_bus();
 if (!IS_ERR(bus))
  bus->offline = 1;

 return ret;
}
