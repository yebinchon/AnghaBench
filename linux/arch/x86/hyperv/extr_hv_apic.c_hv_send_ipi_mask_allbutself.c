
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* send_IPI_mask_allbutself ) (struct cpumask const*,int) ;} ;


 int __send_ipi_mask (struct cpumask const*,int) ;
 int cpumask_clear_cpu (unsigned int,struct cpumask*) ;
 int cpumask_copy (struct cpumask*,struct cpumask const*) ;
 TYPE_1__ orig_apic ;
 unsigned int smp_processor_id () ;
 int stub1 (struct cpumask const*,int) ;

__attribute__((used)) static void hv_send_ipi_mask_allbutself(const struct cpumask *mask, int vector)
{
 unsigned int this_cpu = smp_processor_id();
 struct cpumask new_mask;
 const struct cpumask *local_mask;

 cpumask_copy(&new_mask, mask);
 cpumask_clear_cpu(this_cpu, &new_mask);
 local_mask = &new_mask;
 if (!__send_ipi_mask(local_mask, vector))
  orig_apic.send_IPI_mask_allbutself(mask, vector);
}
