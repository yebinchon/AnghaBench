
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int hpet_restart_counter () ;
 int hpet_resume_device () ;

__attribute__((used)) static void hpet_resume_counter(struct clocksource *cs)
{
 hpet_resume_device();
 hpet_restart_counter();
}
