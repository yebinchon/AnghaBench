
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;


 scalar_t__ xen_clocksource_read () ;

__attribute__((used)) static s64 get_abs_timeout(unsigned long delta)
{
 return xen_clocksource_read() + delta;
}
