
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int elf_hwcap ;
 unsigned long lower_32_bits (int ) ;

unsigned long cpu_get_elf_hwcap(void)
{





 return lower_32_bits(elf_hwcap);
}
