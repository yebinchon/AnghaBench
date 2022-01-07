
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;

__attribute__((used)) static void long_sleep(int ms)
{
 schedule_timeout_interruptible(msecs_to_jiffies(ms));
}
