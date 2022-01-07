
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long start; unsigned long end; } ;


 int nr_pfn_mapped ;
 TYPE_1__* pfn_mapped ;

bool pfn_range_is_mapped(unsigned long start_pfn, unsigned long end_pfn)
{
 int i;

 for (i = 0; i < nr_pfn_mapped; i++)
  if ((start_pfn >= pfn_mapped[i].start) &&
      (end_pfn <= pfn_mapped[i].end))
   return 1;

 return 0;
}
