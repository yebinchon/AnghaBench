
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int loops_per_jiffy ;
 int thread_freq_mhz ;

void calibrate_delay(void)
{
 loops_per_jiffy = thread_freq_mhz * 1000000 / HZ;
}
