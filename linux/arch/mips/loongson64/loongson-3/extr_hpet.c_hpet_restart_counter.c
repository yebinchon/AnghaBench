
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpet_reset_counter () ;
 int hpet_start_counter () ;
 int hpet_stop_counter () ;

__attribute__((used)) static void hpet_restart_counter(void)
{
 hpet_stop_counter();
 hpet_reset_counter();
 hpet_start_counter();
}
