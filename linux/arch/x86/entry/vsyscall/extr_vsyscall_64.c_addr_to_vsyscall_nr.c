
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long VSYSCALL_ADDR ;

__attribute__((used)) static int addr_to_vsyscall_nr(unsigned long addr)
{
 int nr;

 if ((addr & ~0xC00UL) != VSYSCALL_ADDR)
  return -EINVAL;

 nr = (addr & 0xC00UL) >> 10;
 if (nr >= 3)
  return -EINVAL;

 return nr;
}
