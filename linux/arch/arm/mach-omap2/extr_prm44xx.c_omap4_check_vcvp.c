
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRM_HAS_VOLTAGE ;
 int prm_features ;

__attribute__((used)) static int omap4_check_vcvp(void)
{
 if (prm_features & PRM_HAS_VOLTAGE)
  return 1;

 return 0;
}
