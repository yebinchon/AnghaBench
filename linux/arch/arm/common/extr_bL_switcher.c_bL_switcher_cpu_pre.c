
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int bL_switcher_active ;
 int* bL_switcher_cpu_pairing ;

__attribute__((used)) static int bL_switcher_cpu_pre(unsigned int cpu)
{
 int pairing;

 if (!bL_switcher_active)
  return 0;

 pairing = bL_switcher_cpu_pairing[cpu];

 if (pairing == -1)
  return -EINVAL;
 return 0;
}
