
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int markeins_led (char*) ;

__attribute__((used)) static void markeins_machine_power_off(void)
{
 markeins_led("poweroff.");
 while (1) ;
}
