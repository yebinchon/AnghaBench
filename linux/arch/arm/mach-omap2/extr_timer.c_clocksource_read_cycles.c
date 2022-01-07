
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int OMAP_TIMER_NONPOSTED ;
 int __omap_dm_timer_read_counter (int *,int ) ;
 int clksrc ;

__attribute__((used)) static u64 clocksource_read_cycles(struct clocksource *cs)
{
 return (u64)__omap_dm_timer_read_counter(&clksrc,
           OMAP_TIMER_NONPOSTED);
}
