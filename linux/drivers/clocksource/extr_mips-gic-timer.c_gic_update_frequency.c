
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clockevents_update_freq (int ,unsigned long) ;
 int gic_clockevent_device ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static void gic_update_frequency(void *data)
{
 unsigned long rate = (unsigned long)data;

 clockevents_update_freq(this_cpu_ptr(&gic_clockevent_device), rate);
}
