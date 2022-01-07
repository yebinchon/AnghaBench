
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_unmapped_area_info {unsigned long length; unsigned long low_limit; unsigned long high_limit; scalar_t__ align_offset; scalar_t__ align_mask; scalar_t__ flags; } ;


 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

__attribute__((used)) static unsigned long
arch_get_unmapped_area_1(unsigned long addr, unsigned long len,
           unsigned long limit)
{
 struct vm_unmapped_area_info info;

 info.flags = 0;
 info.length = len;
 info.low_limit = addr;
 info.high_limit = limit;
 info.align_mask = 0;
 info.align_offset = 0;
 return vm_unmapped_area(&info);
}
