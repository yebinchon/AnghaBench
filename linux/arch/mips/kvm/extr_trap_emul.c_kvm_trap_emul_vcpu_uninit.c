
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pgd; } ;
struct TYPE_4__ {int pgd; } ;
struct TYPE_6__ {TYPE_2__ guest_user_mm; TYPE_1__ guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int kvm_mips_emul_free_gva_pt (int ) ;

__attribute__((used)) static void kvm_trap_emul_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 kvm_mips_emul_free_gva_pt(vcpu->arch.guest_kernel_mm.pgd);
 kvm_mips_emul_free_gva_pt(vcpu->arch.guest_user_mm.pgd);
}
