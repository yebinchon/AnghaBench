
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct cpuinfo_mips {TYPE_1__ scache; } ;


 int MIPS_CACHE_NOT_PRESENT ;
 unsigned int MIPS_CONF2_SL ;
 unsigned int MIPS_CONF_M ;
 unsigned int read_c0_config2 () ;

__attribute__((used)) static inline unsigned int decode_config2(struct cpuinfo_mips *c)
{
 unsigned int config2;

 config2 = read_c0_config2();

 if (config2 & MIPS_CONF2_SL)
  c->scache.flags &= ~MIPS_CACHE_NOT_PRESENT;

 return config2 & MIPS_CONF_M;
}
