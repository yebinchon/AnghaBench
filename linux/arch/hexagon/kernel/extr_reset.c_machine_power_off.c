
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmstop () ;
 int smp_send_stop () ;

void machine_power_off(void)
{
 smp_send_stop();
 __vmstop();
}
