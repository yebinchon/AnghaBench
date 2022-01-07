
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_SUBCLASS_MEASUREMENT_ALERT ;
 int PMC_RELEASE ;
 int cpum_cf_setup_cpu ;
 int * cpumcf_owner ;
 int cpumcf_owner_lock ;
 int irq_subclass_unregister (int ) ;
 int on_each_cpu (int ,int*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __kernel_cpumcf_end(void)
{
 int flags = PMC_RELEASE;

 on_each_cpu(cpum_cf_setup_cpu, &flags, 1);
 irq_subclass_unregister(IRQ_SUBCLASS_MEASUREMENT_ALERT);

 spin_lock(&cpumcf_owner_lock);
 cpumcf_owner = ((void*)0);
 spin_unlock(&cpumcf_owner_lock);
}
