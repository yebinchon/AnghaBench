
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {unsigned int* pid; } ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int mas4; } ;


 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned int get_tlbmiss_tid(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 unsigned int tidseld = (vcpu->arch.shared->mas4 >> 16) & 0xf;

 return vcpu_e500->pid[tidseld];
}
