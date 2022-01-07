
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int kscratch_mask; int conf; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 unsigned int MIPS_CONF4_KSCREXIST ;
 unsigned int MIPS_CONF4_KSCREXIST_SHIFT ;
 unsigned int MIPS_CONF_M ;
 int probe_gc0_config (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config4(struct cpuinfo_mips *c)
{
 unsigned int config4;

 probe_gc0_config(config4, config4,
    MIPS_CONF_M | MIPS_CONF4_KSCREXIST);

 c->guest.kscratch_mask = (config4 & MIPS_CONF4_KSCREXIST)
    >> MIPS_CONF4_KSCREXIST_SHIFT;

 if (config4 & MIPS_CONF_M)
  c->guest.conf |= BIT(5);
 return config4 & MIPS_CONF_M;
}
