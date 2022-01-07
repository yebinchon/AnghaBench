
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_external_vector; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;


 scalar_t__ irqchip_split (int ) ;
 scalar_t__ kvm_cpu_has_extint (struct kvm_vcpu*) ;
 int kvm_pic_read_irq (int ) ;

__attribute__((used)) static int kvm_cpu_get_extint(struct kvm_vcpu *v)
{
 if (kvm_cpu_has_extint(v)) {
  if (irqchip_split(v->kvm)) {
   int vector = v->arch.pending_external_vector;

   v->arch.pending_external_vector = -1;
   return vector;
  } else
   return kvm_pic_read_irq(v->kvm);
 } else
  return -1;
}
