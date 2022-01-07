
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int globalnumber; } ;


 int CONFIG_CPU_MIPSR6 ;
 int CONFIG_MIPS_MT_SMP ;
 int IS_ENABLED (int ) ;
 unsigned int MIPS_GLOBALNUMBER_VP ;
 unsigned int MIPS_GLOBALNUMBER_VP_SHF ;
 int WARN_ON (int) ;

void cpu_set_vpe_id(struct cpuinfo_mips *cpuinfo, unsigned int vpe)
{

 WARN_ON(vpe > (MIPS_GLOBALNUMBER_VP >> MIPS_GLOBALNUMBER_VP_SHF));


 WARN_ON(vpe && !IS_ENABLED(CONFIG_MIPS_MT_SMP) &&
  !IS_ENABLED(CONFIG_CPU_MIPSR6));

 cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_VP;
 cpuinfo->globalnumber |= vpe << MIPS_GLOBALNUMBER_VP_SHF;
}
