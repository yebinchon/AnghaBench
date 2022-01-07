
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned long pending_irqs; } ;
struct TYPE_10__ {TYPE_4__ local_int; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* kvm; } ;
struct TYPE_6__ {unsigned long pending_irqs; } ;
struct TYPE_7__ {TYPE_1__ float_int; } ;
struct TYPE_8__ {TYPE_2__ arch; } ;



__attribute__((used)) static inline unsigned long pending_irqs_no_gisa(struct kvm_vcpu *vcpu)
{
 return vcpu->kvm->arch.float_int.pending_irqs |
  vcpu->arch.local_int.pending_irqs;
}
