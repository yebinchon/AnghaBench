
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PFN_DOWN (int ) ;
 unsigned long PFN_UP (int ) ;
 int __nosave_begin ;
 int __nosave_end ;
 int __pa (int *) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn = PFN_DOWN(__pa(&__nosave_begin));
 unsigned long nosave_end_pfn = PFN_UP(__pa(&__nosave_end));

 return (pfn >= nosave_begin_pfn) && (pfn < nosave_end_pfn);
}
