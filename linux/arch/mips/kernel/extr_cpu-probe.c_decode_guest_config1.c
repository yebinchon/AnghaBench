
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; int options_dyn; int options; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 unsigned int MIPS_CONF1_FP ;
 unsigned int MIPS_CONF1_PC ;
 unsigned int MIPS_CONF1_WR ;
 unsigned int MIPS_CONF_M ;
 int MIPS_CPU_FPU ;
 int MIPS_CPU_PERF ;
 int MIPS_CPU_WATCH ;
 int probe_gc0_config_dyn (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config1(struct cpuinfo_mips *c)
{
 unsigned int config1, config1_dyn;

 probe_gc0_config_dyn(config1, config1, config1_dyn,
        MIPS_CONF_M | MIPS_CONF1_PC | MIPS_CONF1_WR |
        MIPS_CONF1_FP);

 if (config1 & MIPS_CONF1_FP)
  c->guest.options |= MIPS_CPU_FPU;
 if (config1_dyn & MIPS_CONF1_FP)
  c->guest.options_dyn |= MIPS_CPU_FPU;

 if (config1 & MIPS_CONF1_WR)
  c->guest.options |= MIPS_CPU_WATCH;
 if (config1_dyn & MIPS_CONF1_WR)
  c->guest.options_dyn |= MIPS_CPU_WATCH;

 if (config1 & MIPS_CONF1_PC)
  c->guest.options |= MIPS_CPU_PERF;
 if (config1_dyn & MIPS_CONF1_PC)
  c->guest.options_dyn |= MIPS_CPU_PERF;

 if (config1 & MIPS_CONF_M)
  c->guest.conf |= BIT(2);
 return config1 & MIPS_CONF_M;
}
