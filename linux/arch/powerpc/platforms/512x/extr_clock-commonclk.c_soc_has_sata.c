
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MPC512x_SOC_MPC5125 ;
 scalar_t__ soc ;

__attribute__((used)) static bool soc_has_sata(void)
{
 if (soc == MPC512x_SOC_MPC5125)
  return 0;
 return 1;
}
