
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycles_t ;


 int NUMACHIP2_TIMER_NOW ;
 int numachip2_read64_lcsr (int ) ;

__attribute__((used)) static cycles_t numachip2_timer_read(struct clocksource *cs)
{
 return numachip2_read64_lcsr(NUMACHIP2_TIMER_NOW);
}
