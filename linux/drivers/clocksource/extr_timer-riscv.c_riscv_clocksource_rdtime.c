
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 unsigned long long get_cycles64 () ;

__attribute__((used)) static unsigned long long riscv_clocksource_rdtime(struct clocksource *cs)
{
 return get_cycles64();
}
