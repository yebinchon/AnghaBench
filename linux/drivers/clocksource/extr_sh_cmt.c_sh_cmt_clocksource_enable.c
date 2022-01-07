
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_channel {int cs_enabled; scalar_t__ total_cycles; } ;
struct clocksource {int dummy; } ;


 int FLAG_CLOCKSOURCE ;
 int WARN_ON (int) ;
 struct sh_cmt_channel* cs_to_sh_cmt (struct clocksource*) ;
 int sh_cmt_start (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static int sh_cmt_clocksource_enable(struct clocksource *cs)
{
 int ret;
 struct sh_cmt_channel *ch = cs_to_sh_cmt(cs);

 WARN_ON(ch->cs_enabled);

 ch->total_cycles = 0;

 ret = sh_cmt_start(ch, FLAG_CLOCKSOURCE);
 if (!ret)
  ch->cs_enabled = 1;

 return ret;
}
