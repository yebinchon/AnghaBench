
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_priv {int cs_enabled; scalar_t__ mapbase2; scalar_t__ mapbase1; } ;
struct clocksource {int dummy; } ;


 scalar_t__ TCNT ;
 scalar_t__ TCR ;
 int WARN_ON (int) ;
 struct tpu_priv* cs_to_priv (struct clocksource*) ;
 int iowrite16be (int ,scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;

__attribute__((used)) static int tpu_clocksource_enable(struct clocksource *cs)
{
 struct tpu_priv *p = cs_to_priv(cs);

 WARN_ON(p->cs_enabled);

 iowrite16be(0, p->mapbase1 + TCNT);
 iowrite16be(0, p->mapbase2 + TCNT);
 iowrite8(0x0f, p->mapbase1 + TCR);
 iowrite8(0x03, p->mapbase2 + TCR);

 p->cs_enabled = 1;
 return 0;
}
