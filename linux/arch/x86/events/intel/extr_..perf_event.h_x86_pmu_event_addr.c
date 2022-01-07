
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int perfctr; int (* addr_offset ) (int,int) ;} ;


 int stub1 (int,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline unsigned int x86_pmu_event_addr(int index)
{
 return x86_pmu.perfctr + (x86_pmu.addr_offset ?
      x86_pmu.addr_offset(index, 0) : index);
}
