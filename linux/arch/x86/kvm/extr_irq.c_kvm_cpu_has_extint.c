
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_5__ {TYPE_1__* vpic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int output; } ;


 scalar_t__ irqchip_split (TYPE_3__*) ;
 scalar_t__ kvm_apic_accept_pic_intr (struct kvm_vcpu*) ;
 int pending_userspace_extint (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_cpu_has_extint(struct kvm_vcpu *v)
{
 u8 accept = kvm_apic_accept_pic_intr(v);

 if (accept) {
  if (irqchip_split(v->kvm))
   return pending_userspace_extint(v);
  else
   return v->kvm->arch.vpic->output;
 } else
  return 0;
}
