
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_align_bits () ;
 unsigned long get_align_mask () ;

unsigned long align_vdso_addr(unsigned long addr)
{
 unsigned long align_mask = get_align_mask();
 addr = (addr + align_mask) & ~align_mask;
 return addr | get_align_bits();
}
