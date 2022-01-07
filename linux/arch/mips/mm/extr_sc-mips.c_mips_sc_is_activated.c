
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linesz; } ;
struct cpuinfo_mips {TYPE_1__ scache; } ;
 int current_cpu_type () ;
 unsigned int read_c0_config2 () ;

__attribute__((used)) static inline int mips_sc_is_activated(struct cpuinfo_mips *c)
{
 unsigned int config2 = read_c0_config2();
 unsigned int tmp;


 switch (current_cpu_type()) {
 case 135:
 case 134:
 case 137:
 case 136:
 case 132:
 case 129:
 case 131:
 case 133:
 case 128:
 case 130:
  if (config2 & (1 << 12))
   return 0;
 }

 tmp = (config2 >> 4) & 0x0f;
 if (0 < tmp && tmp <= 7)
  c->scache.linesz = 2 << tmp;
 else
  return 0;
 return 1;
}
