
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clockevents_update_freq (int ,unsigned long) ;
 int raw_cpu_ptr (int ) ;
 int twd_evt ;
 unsigned long twd_timer_rate ;

__attribute__((used)) static void twd_update_frequency(void *new_rate)
{
 twd_timer_rate = *((unsigned long *) new_rate);

 clockevents_update_freq(raw_cpu_ptr(twd_evt), twd_timer_rate);
}
