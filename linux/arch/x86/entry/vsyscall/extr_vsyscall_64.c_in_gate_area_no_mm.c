
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NONE ;
 unsigned long PAGE_MASK ;
 unsigned long VSYSCALL_ADDR ;
 scalar_t__ vsyscall_mode ;

int in_gate_area_no_mm(unsigned long addr)
{
 return vsyscall_mode != NONE && (addr & PAGE_MASK) == VSYSCALL_ADDR;
}
