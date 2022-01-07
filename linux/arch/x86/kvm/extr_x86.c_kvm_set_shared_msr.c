
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int on_user_return; } ;
struct kvm_shared_msrs {int registered; TYPE_2__ urn; TYPE_1__* values; } ;
struct TYPE_6__ {int * msrs; } ;
struct TYPE_4__ {int curr; } ;


 int kvm_on_user_return ;
 struct kvm_shared_msrs* per_cpu_ptr (int ,unsigned int) ;
 int shared_msrs ;
 TYPE_3__ shared_msrs_global ;
 unsigned int smp_processor_id () ;
 int user_return_notifier_register (TYPE_2__*) ;
 int wrmsrl_safe (int ,int) ;

int kvm_set_shared_msr(unsigned slot, u64 value, u64 mask)
{
 unsigned int cpu = smp_processor_id();
 struct kvm_shared_msrs *smsr = per_cpu_ptr(shared_msrs, cpu);
 int err;

 if (((value ^ smsr->values[slot].curr) & mask) == 0)
  return 0;
 smsr->values[slot].curr = value;
 err = wrmsrl_safe(shared_msrs_global.msrs[slot], value);
 if (err)
  return 1;

 if (!smsr->registered) {
  smsr->urn.on_user_return = kvm_on_user_return;
  user_return_notifier_register(&smsr->urn);
  smsr->registered = 1;
 }
 return 0;
}
