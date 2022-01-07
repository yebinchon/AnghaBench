
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int hpet_enable_legacy_int () ;
 int hpet_print_config () ;

__attribute__((used)) static int hpet_clkevt_legacy_resume(struct clock_event_device *evt)
{
 hpet_enable_legacy_int();
 hpet_print_config();
 return 0;
}
