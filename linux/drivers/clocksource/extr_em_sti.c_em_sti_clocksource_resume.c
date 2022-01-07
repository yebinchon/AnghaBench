
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int em_sti_clocksource_enable (struct clocksource*) ;

__attribute__((used)) static void em_sti_clocksource_resume(struct clocksource *cs)
{
 em_sti_clocksource_enable(cs);
}
