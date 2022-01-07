
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int __nosave_begin ;
 int __nosave_end ;
 unsigned long __pa_symbol (int *) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn;
 unsigned long nosave_end_pfn;

 nosave_begin_pfn = __pa_symbol(&__nosave_begin) >> PAGE_SHIFT;
 nosave_end_pfn = PAGE_ALIGN(__pa_symbol(&__nosave_end)) >> PAGE_SHIFT;

 return pfn >= nosave_begin_pfn && pfn < nosave_end_pfn;
}
