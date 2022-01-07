
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_priv {int cs_enabled; scalar_t__ mapbase2; scalar_t__ mapbase1; } ;
struct clocksource {int dummy; } ;


 scalar_t__ TCR ;
 int WARN_ON (int) ;
 struct tpu_priv* cs_to_priv (struct clocksource*) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tpu_clocksource_disable(struct clocksource *cs)
{
 struct tpu_priv *p = cs_to_priv(cs);

 WARN_ON(!p->cs_enabled);

 iowrite8(0, p->mapbase1 + TCR);
 iowrite8(0, p->mapbase2 + TCR);
 p->cs_enabled = 0;
}
