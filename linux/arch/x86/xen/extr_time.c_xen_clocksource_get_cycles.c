
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int xen_clocksource_read () ;

__attribute__((used)) static u64 xen_clocksource_get_cycles(struct clocksource *cs)
{
 return xen_clocksource_read();
}
