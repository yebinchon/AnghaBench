
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* rdpmc_index ) (int) ;} ;


 int stub1 (int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline int x86_pmu_rdpmc_index(int index)
{
 return x86_pmu.rdpmc_index ? x86_pmu.rdpmc_index(index) : index;
}
