
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long arch_timer_read_counter () ;

__attribute__((used)) static unsigned long arch_timer_read_counter_long(void)
{
 return arch_timer_read_counter();
}
