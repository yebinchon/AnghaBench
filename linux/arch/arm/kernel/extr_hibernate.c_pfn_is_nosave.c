
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nosave_begin ;
 int __nosave_end ;
 unsigned long virt_to_pfn (int *) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn = virt_to_pfn(&__nosave_begin);
 unsigned long nosave_end_pfn = virt_to_pfn(&__nosave_end - 1);

 return (pfn >= nosave_begin_pfn) && (pfn <= nosave_end_pfn);
}
