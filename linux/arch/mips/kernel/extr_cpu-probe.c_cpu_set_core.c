
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int globalnumber; } ;


 unsigned int MIPS_GLOBALNUMBER_CORE ;
 unsigned int MIPS_GLOBALNUMBER_CORE_SHF ;
 int WARN_ON (int) ;

void cpu_set_core(struct cpuinfo_mips *cpuinfo, unsigned int core)
{

 WARN_ON(core > (MIPS_GLOBALNUMBER_CORE >> MIPS_GLOBALNUMBER_CORE_SHF));

 cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_CORE;
 cpuinfo->globalnumber |= core << MIPS_GLOBALNUMBER_CORE_SHF;
}
