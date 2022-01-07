
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bmips_smp_enabled ;
 int * board_ebase_setup ;
 int kbase_setup ;

__attribute__((used)) static void bcm3384_viper_quirks(void)
{
 board_ebase_setup = &kbase_setup;
 bmips_smp_enabled = 0;
}
