
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_SUBCLASS_MEASUREMENT_ALERT ;
 int PMC_RELEASE ;
 int irq_subclass_unregister (int ) ;
 int on_each_cpu (int ,int*,int) ;
 int setup_pmc_cpu ;

__attribute__((used)) static void release_pmc_hardware(void)
{
 int flags = PMC_RELEASE;

 irq_subclass_unregister(IRQ_SUBCLASS_MEASUREMENT_ALERT);
 on_each_cpu(setup_pmc_cpu, &flags, 1);
}
