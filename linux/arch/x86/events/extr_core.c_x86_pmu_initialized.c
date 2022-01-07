
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle_irq; } ;


 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline int x86_pmu_initialized(void)
{
 return x86_pmu.handle_irq != ((void*)0);
}
