
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_lazy; } ;


 TYPE_1__ cpu_tlbstate ;
 int per_cpu (int ,int) ;

__attribute__((used)) static bool tlb_is_not_lazy(int cpu, void *data)
{
 return !per_cpu(cpu_tlbstate.is_lazy, cpu);
}
