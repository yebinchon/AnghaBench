
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool pmc_overflow_power7(unsigned long val)
{
 if ((0x80000000 - val) <= 256)
  return 1;

 return 0;
}
