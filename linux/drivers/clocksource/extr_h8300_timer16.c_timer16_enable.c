
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer16_priv {int cs_enabled; scalar_t__ mapcommon; int enb; int ovie; scalar_t__ mapbase; scalar_t__ total_cycles; } ;
struct clocksource {int dummy; } ;


 scalar_t__ TCNT ;
 scalar_t__ TCR ;
 scalar_t__ TISRC ;
 scalar_t__ TSTR ;
 int WARN_ON (int) ;
 int bset (int ,scalar_t__) ;
 struct timer16_priv* cs_to_priv (struct clocksource*) ;
 int iowrite16be (int,scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;

__attribute__((used)) static int timer16_enable(struct clocksource *cs)
{
 struct timer16_priv *p = cs_to_priv(cs);

 WARN_ON(p->cs_enabled);

 p->total_cycles = 0;
 iowrite16be(0x0000, p->mapbase + TCNT);
 iowrite8(0x83, p->mapbase + TCR);
 bset(p->ovie, p->mapcommon + TISRC);
 bset(p->enb, p->mapcommon + TSTR);

 p->cs_enabled = 1;
 return 0;
}
