
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip32_poweroff (int *) ;
 int ip32_rtc_device ;

__attribute__((used)) static void ip32_machine_halt(void)
{
 ip32_poweroff(&ip32_rtc_device);
}
