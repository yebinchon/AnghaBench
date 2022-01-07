
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hfscr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct hv_guest_state {int hfscr; int ciabr; int dawrx0; } ;


 int CIABR_PRIV ;
 int CIABR_PRIV_HYPER ;
 int DAWRX_HYP ;
 int HFSCR_INTR_CAUSE ;

__attribute__((used)) static void sanitise_hv_regs(struct kvm_vcpu *vcpu, struct hv_guest_state *hr)
{




 hr->hfscr &= (HFSCR_INTR_CAUSE | vcpu->arch.hfscr);


 hr->dawrx0 &= ~DAWRX_HYP;


 if ((hr->ciabr & CIABR_PRIV) == CIABR_PRIV_HYPER)
  hr->ciabr &= ~CIABR_PRIV;
}
