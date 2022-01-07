
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; int options; int options_dyn; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 unsigned int MIPS_CONF5_LLB ;
 unsigned int MIPS_CONF5_MRP ;
 unsigned int MIPS_CONF5_MVH ;
 unsigned int MIPS_CONF_M ;
 int MIPS_CPU_MAAR ;
 int MIPS_CPU_MVH ;
 int MIPS_CPU_RW_LLB ;
 int probe_gc0_config_dyn (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config5(struct cpuinfo_mips *c)
{
 unsigned int config5, config5_dyn;

 probe_gc0_config_dyn(config5, config5, config5_dyn,
    MIPS_CONF_M | MIPS_CONF5_MVH | MIPS_CONF5_MRP);

 if (config5 & MIPS_CONF5_MRP)
  c->guest.options |= MIPS_CPU_MAAR;
 if (config5_dyn & MIPS_CONF5_MRP)
  c->guest.options_dyn |= MIPS_CPU_MAAR;

 if (config5 & MIPS_CONF5_LLB)
  c->guest.options |= MIPS_CPU_RW_LLB;

 if (config5 & MIPS_CONF5_MVH)
  c->guest.options |= MIPS_CPU_MVH;

 if (config5 & MIPS_CONF_M)
  c->guest.conf |= BIT(6);
 return config5 & MIPS_CONF_M;
}
