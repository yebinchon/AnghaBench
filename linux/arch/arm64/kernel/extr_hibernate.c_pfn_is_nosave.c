
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nosave_begin ;
 int __nosave_end ;
 scalar_t__ crash_is_nosave (unsigned long) ;
 unsigned long sym_to_pfn (int *) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn = sym_to_pfn(&__nosave_begin);
 unsigned long nosave_end_pfn = sym_to_pfn(&__nosave_end - 1);

 return ((pfn >= nosave_begin_pfn) && (pfn <= nosave_end_pfn)) ||
  crash_is_nosave(pfn);
}
