
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_cycles () ;

int read_current_timer(unsigned long *timer_value)
{
 *timer_value = get_cycles();
 return 0;
}
