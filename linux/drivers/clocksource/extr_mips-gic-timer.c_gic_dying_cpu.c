
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gic_clockevent_cpu_exit (int ) ;
 int gic_clockevent_device ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static int gic_dying_cpu(unsigned int cpu)
{
 gic_clockevent_cpu_exit(this_cpu_ptr(&gic_clockevent_device));
 return 0;
}
