
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_shared_msrs {int urn; scalar_t__ registered; } ;


 int kvm_on_user_return (int *) ;
 struct kvm_shared_msrs* per_cpu_ptr (int ,unsigned int) ;
 int shared_msrs ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static void drop_user_return_notifiers(void)
{
 unsigned int cpu = smp_processor_id();
 struct kvm_shared_msrs *smsr = per_cpu_ptr(shared_msrs, cpu);

 if (smsr->registered)
  kvm_on_user_return(&smsr->urn);
}
