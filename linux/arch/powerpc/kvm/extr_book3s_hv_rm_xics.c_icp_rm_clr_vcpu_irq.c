
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_IRQPRIO_EXTERNAL ;
 int LPCR_MER ;
 int SPRN_LPCR ;
 int clear_bit (int ,int *) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void icp_rm_clr_vcpu_irq(struct kvm_vcpu *vcpu)
{

 clear_bit(BOOK3S_IRQPRIO_EXTERNAL, &vcpu->arch.pending_exceptions);
 mtspr(SPRN_LPCR, mfspr(SPRN_LPCR) & ~LPCR_MER);
}
