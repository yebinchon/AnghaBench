
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* __pfn_to_nid ) (unsigned long) ;} ;


 TYPE_1__* mode ;
 int stub1 (unsigned long) ;

int numa_pfn_to_nid(unsigned long pfn)
{
 return mode->__pfn_to_nid ? mode->__pfn_to_nid(pfn) : 0;
}
