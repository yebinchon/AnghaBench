
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ls1x_halt () ;

__attribute__((used)) static void ls1x_power_off(void)
{
 ls1x_halt();
}
