
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct machine_check_event {scalar_t__ version; int disposition; } ;
struct TYPE_5__ {unsigned long msr; unsigned long dsisr; } ;
struct TYPE_8__ {struct machine_check_event mce_evt; TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_3__* kvm; } ;
typedef int mce_evt ;
struct TYPE_6__ {int radix; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;


 unsigned long DSISR_MC_DERAT_MULTI ;
 unsigned long DSISR_MC_SLB_MULTI ;
 unsigned long DSISR_MC_SLB_PARITY ;
 unsigned long DSISR_MC_SLB_PARMULTI ;
 unsigned long DSISR_MC_TLB_MULTI ;
 int MCE_DISPOSITION_RECOVERED ;
 int MCE_EVENT_RELEASE ;
 scalar_t__ MCE_V1 ;
 unsigned long SRR1_MC_IFETCH_MASK ;
 unsigned long SRR1_MC_IFETCH_SH ;




 unsigned long SRR1_MC_LDSTERR ;
 scalar_t__ get_mce_event (struct machine_check_event*,int ) ;
 int memset (struct machine_check_event*,int ,int) ;
 int reload_slb (struct kvm_vcpu*) ;
 int tlbiel_all_lpid (int ) ;

__attribute__((used)) static void kvmppc_realmode_mc_power7(struct kvm_vcpu *vcpu)
{
 unsigned long srr1 = vcpu->arch.shregs.msr;
 struct machine_check_event mce_evt;
 long handled = 1;

 if (srr1 & SRR1_MC_LDSTERR) {

  unsigned long dsisr = vcpu->arch.shregs.dsisr;

  if (dsisr & (DSISR_MC_SLB_PARMULTI | DSISR_MC_SLB_MULTI |
        DSISR_MC_SLB_PARITY | DSISR_MC_DERAT_MULTI)) {

   reload_slb(vcpu);
   dsisr &= ~(DSISR_MC_SLB_PARMULTI | DSISR_MC_SLB_MULTI |
       DSISR_MC_SLB_PARITY | DSISR_MC_DERAT_MULTI);
  }
  if (dsisr & DSISR_MC_TLB_MULTI) {
   tlbiel_all_lpid(vcpu->kvm->arch.radix);
   dsisr &= ~DSISR_MC_TLB_MULTI;
  }

  if (dsisr & 0xffffffffUL)
   handled = 0;
 }

 switch ((srr1 >> SRR1_MC_IFETCH_SH) & SRR1_MC_IFETCH_MASK) {
 case 0:
  break;
 case 130:
 case 131:
 case 129:
  reload_slb(vcpu);
  break;
 case 128:
  tlbiel_all_lpid(vcpu->kvm->arch.radix);
  break;
 default:
  handled = 0;
 }







 if (get_mce_event(&mce_evt, MCE_EVENT_RELEASE)) {
  if (handled && mce_evt.version == MCE_V1)
   mce_evt.disposition = MCE_DISPOSITION_RECOVERED;
 } else {
  memset(&mce_evt, 0, sizeof(mce_evt));
 }

 vcpu->arch.mce_evt = mce_evt;
}
