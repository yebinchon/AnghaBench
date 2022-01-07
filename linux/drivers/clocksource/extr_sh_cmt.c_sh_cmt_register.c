
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_1__* cmt; } ;
struct TYPE_2__ {int has_clockevent; int has_clocksource; } ;


 int sh_cmt_register_clockevent (struct sh_cmt_channel*,char const*) ;
 int sh_cmt_register_clocksource (struct sh_cmt_channel*,char const*) ;

__attribute__((used)) static int sh_cmt_register(struct sh_cmt_channel *ch, const char *name,
      bool clockevent, bool clocksource)
{
 int ret;

 if (clockevent) {
  ch->cmt->has_clockevent = 1;
  ret = sh_cmt_register_clockevent(ch, name);
  if (ret < 0)
   return ret;
 }

 if (clocksource) {
  ch->cmt->has_clocksource = 1;
  sh_cmt_register_clocksource(ch, name);
 }

 return 0;
}
