
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (unsigned int) ;
 unsigned int MAX_CPU_FEATURES ;
 int WARN_ON (int) ;
 int elf_hwcap ;

bool cpu_have_feature(unsigned int num)
{
 WARN_ON(num >= MAX_CPU_FEATURES);
 return elf_hwcap & BIT(num);
}
