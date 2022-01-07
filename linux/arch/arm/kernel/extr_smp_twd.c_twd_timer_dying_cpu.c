
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int twd_timer_stop () ;

__attribute__((used)) static int twd_timer_dying_cpu(unsigned int cpu)
{
 twd_timer_stop();
 return 0;
}
