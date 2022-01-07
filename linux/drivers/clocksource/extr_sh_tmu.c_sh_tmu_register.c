
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {TYPE_1__* tmu; } ;
struct TYPE_2__ {int has_clockevent; int has_clocksource; } ;


 int sh_tmu_register_clockevent (struct sh_tmu_channel*,char const*) ;
 int sh_tmu_register_clocksource (struct sh_tmu_channel*,char const*) ;

__attribute__((used)) static int sh_tmu_register(struct sh_tmu_channel *ch, const char *name,
      bool clockevent, bool clocksource)
{
 if (clockevent) {
  ch->tmu->has_clockevent = 1;
  sh_tmu_register_clockevent(ch, name);
 } else if (clocksource) {
  ch->tmu->has_clocksource = 1;
  sh_tmu_register_clocksource(ch, name);
 }

 return 0;
}
