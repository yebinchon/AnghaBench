
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 unsigned int MIPS_CONF_M ;
 int probe_gc0_config (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config2(struct cpuinfo_mips *c)
{
 unsigned int config2;

 probe_gc0_config(config2, config2, MIPS_CONF_M);

 if (config2 & MIPS_CONF_M)
  c->guest.conf |= BIT(3);
 return config2 & MIPS_CONF_M;
}
