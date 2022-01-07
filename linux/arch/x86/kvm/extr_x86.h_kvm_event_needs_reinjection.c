
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ injected; } ;
struct TYPE_4__ {scalar_t__ injected; } ;
struct TYPE_6__ {scalar_t__ nmi_injected; TYPE_2__ interrupt; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;



__attribute__((used)) static inline bool kvm_event_needs_reinjection(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.exception.injected || vcpu->arch.interrupt.injected ||
  vcpu->arch.nmi_injected;
}
