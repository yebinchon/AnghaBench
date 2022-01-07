
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {int nip; } ;
struct TYPE_6__ {int epr_flags; int ivpr; int* ivor; scalar_t__ irq_type; int epcr; int pending_exceptions; int queued_dear; int queued_esr; TYPE_2__ regs; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef enum int_class { ____Placeholder_int_class } int_class ;
struct TYPE_4__ {int critical; int msr; } ;


 int BOOKE_IRQMASK_CE ;
 int BOOKE_IRQMASK_EE ;
 unsigned int BOOKE_IRQPRIO_EXTERNAL_LEVEL ;
 int BUG_ON (int) ;
 int CPU_FTR_DEBUG_LVL_EXC ;




 int KVMPPC_EPR_KERNEL ;
 int KVMPPC_EPR_USER ;
 scalar_t__ KVMPPC_IRQ_MPIC ;
 int KVM_REQ_EPR_EXIT ;
 int MSR_CE ;
 int MSR_CM ;
 int MSR_DE ;
 int MSR_EE ;
 int MSR_ME ;
 int MSR_PR ;
 int MSR_SF ;
 int SPRN_EPCR_ICM ;
 int clear_bit (unsigned int,int*) ;
 int cpu_has_feature (int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_mpic_set_epr (struct kvm_vcpu*) ;
 int kvmppc_set_dar (struct kvm_vcpu*,int ) ;
 int kvmppc_set_esr (struct kvm_vcpu*,int ) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int) ;
 int kvmppc_set_pending_interrupt (struct kvm_vcpu*,int) ;
 int set_guest_csrr (struct kvm_vcpu*,int,int) ;
 int set_guest_dsrr (struct kvm_vcpu*,int,int) ;
 int set_guest_mcsrr (struct kvm_vcpu*,int,int) ;
 int set_guest_srr (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static int kvmppc_booke_irqprio_deliver(struct kvm_vcpu *vcpu,
                                        unsigned int priority)
{
 int allowed = 0;
 ulong msr_mask = 0;
 bool update_esr = 0, update_dear = 0, update_epr = 0;
 ulong crit_raw = vcpu->arch.shared->critical;
 ulong crit_r1 = kvmppc_get_gpr(vcpu, 1);
 bool crit;
 bool keep_irq = 0;
 enum int_class int_class;
 ulong new_msr = vcpu->arch.shared->msr;


 if (!(vcpu->arch.shared->msr & MSR_SF)) {
  crit_raw &= 0xffffffff;
  crit_r1 &= 0xffffffff;
 }


 crit = (crit_raw == crit_r1);

 crit = crit && !(vcpu->arch.shared->msr & MSR_PR);

 if (priority == BOOKE_IRQPRIO_EXTERNAL_LEVEL) {
  priority = 143;
  keep_irq = 1;
 }

 if ((priority == 143) && vcpu->arch.epr_flags)
  update_epr = 1;

 switch (priority) {
 case 144:
 case 149:
 case 154:
  update_dear = 1;

 case 140:
 case 137:
  update_esr = 1;

 case 139:
 case 133:
 case 141:
 case 151:
  allowed = 1;
  msr_mask = MSR_CE | MSR_ME | MSR_DE;
  int_class = 128;
  break;
 case 132:
 case 150:
 case 147:
  allowed = vcpu->arch.shared->msr & MSR_CE;
  allowed = allowed && !crit;
  msr_mask = MSR_ME;
  int_class = 131;
  break;
 case 138:
  allowed = vcpu->arch.shared->msr & MSR_ME;
  allowed = allowed && !crit;
  int_class = 129;
  break;
 case 145:
 case 142:
  keep_irq = 1;

 case 143:
 case 148:
  allowed = vcpu->arch.shared->msr & MSR_EE;
  allowed = allowed && !crit;
  msr_mask = MSR_CE | MSR_ME | MSR_DE;
  int_class = 128;
  break;
 case 146:
  allowed = vcpu->arch.shared->msr & MSR_DE;
  allowed = allowed && !crit;
  msr_mask = MSR_ME;
  if (cpu_has_feature(CPU_FTR_DEBUG_LVL_EXC))
   int_class = 130;
  else
   int_class = 131;

  break;
 }

 if (allowed) {
  switch (int_class) {
  case 128:
   set_guest_srr(vcpu, vcpu->arch.regs.nip,
          vcpu->arch.shared->msr);
   break;
  case 131:
   set_guest_csrr(vcpu, vcpu->arch.regs.nip,
           vcpu->arch.shared->msr);
   break;
  case 130:
   set_guest_dsrr(vcpu, vcpu->arch.regs.nip,
           vcpu->arch.shared->msr);
   break;
  case 129:
   set_guest_mcsrr(vcpu, vcpu->arch.regs.nip,
     vcpu->arch.shared->msr);
   break;
  }

  vcpu->arch.regs.nip = vcpu->arch.ivpr |
     vcpu->arch.ivor[priority];
  if (update_esr == 1)
   kvmppc_set_esr(vcpu, vcpu->arch.queued_esr);
  if (update_dear == 1)
   kvmppc_set_dar(vcpu, vcpu->arch.queued_dear);
  if (update_epr == 1) {
   if (vcpu->arch.epr_flags & KVMPPC_EPR_USER)
    kvm_make_request(KVM_REQ_EPR_EXIT, vcpu);
   else if (vcpu->arch.epr_flags & KVMPPC_EPR_KERNEL) {
    BUG_ON(vcpu->arch.irq_type != KVMPPC_IRQ_MPIC);
    kvmppc_mpic_set_epr(vcpu);
   }
  }

  new_msr &= msr_mask;




  kvmppc_set_msr(vcpu, new_msr);

  if (!keep_irq)
   clear_bit(priority, &vcpu->arch.pending_exceptions);
 }
 return allowed;
}
