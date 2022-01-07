
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 unsigned int MIPS_CONF_M ;
 int config ;
 int probe_gc0_config (int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config0(struct cpuinfo_mips *c)
{
 unsigned int config0;

 probe_gc0_config(config, config0, MIPS_CONF_M);

 if (config0 & MIPS_CONF_M)
  c->guest.conf |= BIT(1);
 return config0 & MIPS_CONF_M;
}
