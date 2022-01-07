
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer16_priv {int cs_enabled; scalar_t__ mapcommon; int enb; int ovie; } ;
struct clocksource {int dummy; } ;


 scalar_t__ TISRC ;
 scalar_t__ TSTR ;
 int WARN_ON (int) ;
 int bclr (int ,scalar_t__) ;
 struct timer16_priv* cs_to_priv (struct clocksource*) ;

__attribute__((used)) static void timer16_disable(struct clocksource *cs)
{
 struct timer16_priv *p = cs_to_priv(cs);

 WARN_ON(!p->cs_enabled);

 bclr(p->ovie, p->mapcommon + TISRC);
 bclr(p->enb, p->mapcommon + TSTR);

 p->cs_enabled = 0;
}
