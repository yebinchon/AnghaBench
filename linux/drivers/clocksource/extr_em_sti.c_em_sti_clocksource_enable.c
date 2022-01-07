
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {int dummy; } ;
struct clocksource {int dummy; } ;


 int USER_CLOCKSOURCE ;
 struct em_sti_priv* cs_to_em_sti (struct clocksource*) ;
 int em_sti_start (struct em_sti_priv*,int ) ;

__attribute__((used)) static int em_sti_clocksource_enable(struct clocksource *cs)
{
 struct em_sti_priv *p = cs_to_em_sti(cs);

 return em_sti_start(p, USER_CLOCKSOURCE);
}
