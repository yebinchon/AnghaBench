
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int CPU_MASK_ALL ;

__attribute__((used)) static cpumask_t vector_allocation_domain(int cpu)
{
 return CPU_MASK_ALL;
}
