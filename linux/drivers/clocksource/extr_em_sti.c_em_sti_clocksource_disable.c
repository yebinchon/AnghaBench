
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int USER_CLOCKSOURCE ;
 int cs_to_em_sti (struct clocksource*) ;
 int em_sti_stop (int ,int ) ;

__attribute__((used)) static void em_sti_clocksource_disable(struct clocksource *cs)
{
 em_sti_stop(cs_to_em_sti(cs), USER_CLOCKSOURCE);
}
