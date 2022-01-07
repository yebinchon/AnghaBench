
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,unsigned int) ;

int setup_profiling_timer(unsigned int multiplier)
{
 pr_debug("setup_profiling_timer %d\n", multiplier);
 return 0;
}
