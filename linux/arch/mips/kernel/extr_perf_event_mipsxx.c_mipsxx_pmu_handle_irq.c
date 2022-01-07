
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int mipsxx_pmu_handle_shared_irq () ;

__attribute__((used)) static irqreturn_t mipsxx_pmu_handle_irq(int irq, void *dev)
{
 return mipsxx_pmu_handle_shared_irq();
}
