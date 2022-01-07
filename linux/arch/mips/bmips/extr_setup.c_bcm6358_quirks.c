
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bmips_smp_enabled ;

__attribute__((used)) static void bcm6358_quirks(void)
{




 bmips_smp_enabled = 0;
}
