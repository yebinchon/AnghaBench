
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int IRQ_SUBCLASS_MEASUREMENT_ALERT ;
 int PMC_FAILURE ;
 int PMC_INIT ;
 int irq_subclass_register (int ) ;
 int on_each_cpu (int ,int*,int) ;
 int release_pmc_hardware () ;
 int setup_pmc_cpu ;

__attribute__((used)) static int reserve_pmc_hardware(void)
{
 int flags = PMC_INIT;

 on_each_cpu(setup_pmc_cpu, &flags, 1);
 if (flags & PMC_FAILURE) {
  release_pmc_hardware();
  return -ENODEV;
 }
 irq_subclass_register(IRQ_SUBCLASS_MEASUREMENT_ALERT);

 return 0;
}
