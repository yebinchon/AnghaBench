
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_channel {int cs_enabled; } ;
struct clocksource {int dummy; } ;


 int FLAG_CLOCKSOURCE ;
 int WARN_ON (int) ;
 struct sh_cmt_channel* cs_to_sh_cmt (struct clocksource*) ;
 int sh_cmt_stop (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static void sh_cmt_clocksource_disable(struct clocksource *cs)
{
 struct sh_cmt_channel *ch = cs_to_sh_cmt(cs);

 WARN_ON(!ch->cs_enabled);

 sh_cmt_stop(ch, FLAG_CLOCKSOURCE);
 ch->cs_enabled = 0;
}
