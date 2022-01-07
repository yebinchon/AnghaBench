
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_channel {int cs_enabled; } ;
struct clocksource {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct sh_tmu_channel* cs_to_sh_tmu (struct clocksource*) ;
 int sh_tmu_enable (struct sh_tmu_channel*) ;

__attribute__((used)) static int sh_tmu_clocksource_enable(struct clocksource *cs)
{
 struct sh_tmu_channel *ch = cs_to_sh_tmu(cs);
 int ret;

 if (WARN_ON(ch->cs_enabled))
  return 0;

 ret = sh_tmu_enable(ch);
 if (!ret)
  ch->cs_enabled = 1;

 return ret;
}
