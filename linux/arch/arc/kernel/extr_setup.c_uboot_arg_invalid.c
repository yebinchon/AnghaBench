
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;
 scalar_t__ _end ;
 scalar_t__ _stext ;

__attribute__((used)) static inline bool uboot_arg_invalid(unsigned long addr)
{




 if (addr < PAGE_OFFSET)
  return 1;


 return addr >= (unsigned long)_stext && addr <= (unsigned long)_end;
}
