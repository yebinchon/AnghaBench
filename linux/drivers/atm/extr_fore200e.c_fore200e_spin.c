
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void
fore200e_spin(int msecs)
{
    unsigned long timeout = jiffies + msecs_to_jiffies(msecs);
    while (time_before(jiffies, timeout));
}
