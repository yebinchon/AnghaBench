
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;

__attribute__((used)) static irqreturn_t arc_pmu_intr(int irq, void *dev)
{
 return IRQ_NONE;
}
