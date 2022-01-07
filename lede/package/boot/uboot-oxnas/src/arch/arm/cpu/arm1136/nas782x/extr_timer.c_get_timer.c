
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;


 scalar_t__ get_timer_masked () ;

ulong get_timer (ulong base)
{
 return get_timer_masked () - base;
}
