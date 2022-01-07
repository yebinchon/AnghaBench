
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clksrc ;
 unsigned long tc_get_cycles (int *) ;

__attribute__((used)) static unsigned long tc_delay_timer_read(void)
{
 return tc_get_cycles(&clksrc);
}
