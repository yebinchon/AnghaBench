
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int vrsave; int tcr; int tsr; int mcsr; int csrr1; int csrr0; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int vrsave; int tb; int dec; int tcr; int tsr; int dear; int esr; int mcsr; int csrr1; int csrr0; int features; } ;
struct TYPE_5__ {TYPE_1__ e; } ;
struct kvm_sregs {TYPE_2__ u; } ;


 int KVM_SREGS_E_BASE ;
 int get_tb () ;
 int kvmppc_get_dar (struct kvm_vcpu*) ;
 int kvmppc_get_dec (struct kvm_vcpu*,int ) ;
 int kvmppc_get_esr (struct kvm_vcpu*) ;

__attribute__((used)) static void get_sregs_base(struct kvm_vcpu *vcpu,
                           struct kvm_sregs *sregs)
{
 u64 tb = get_tb();

 sregs->u.e.features |= KVM_SREGS_E_BASE;

 sregs->u.e.csrr0 = vcpu->arch.csrr0;
 sregs->u.e.csrr1 = vcpu->arch.csrr1;
 sregs->u.e.mcsr = vcpu->arch.mcsr;
 sregs->u.e.esr = kvmppc_get_esr(vcpu);
 sregs->u.e.dear = kvmppc_get_dar(vcpu);
 sregs->u.e.tsr = vcpu->arch.tsr;
 sregs->u.e.tcr = vcpu->arch.tcr;
 sregs->u.e.dec = kvmppc_get_dec(vcpu, tb);
 sregs->u.e.tb = tb;
 sregs->u.e.vrsave = vcpu->arch.vrsave;
}
