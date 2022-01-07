
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* sie_block; } ;
struct TYPE_12__ {int instruction_rrbe; } ;
struct kvm_vcpu {int kvm; TYPE_7__* run; TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_20__ {TYPE_8__* mm; } ;
struct TYPE_19__ {int mmap_sem; } ;
struct TYPE_16__ {unsigned long* gprs; } ;
struct TYPE_17__ {TYPE_5__ regs; } ;
struct TYPE_18__ {TYPE_6__ s; } ;
struct TYPE_13__ {int mask; } ;
struct TYPE_14__ {TYPE_2__ gpsw; } ;


 int EAGAIN ;
 int EFAULT ;
 int FAULT_FLAG_WRITE ;
 unsigned long PAGE_MASK ;
 int PGM_ADDRESSING ;
 int PGM_PRIVILEGED_OP ;
 int PSW_MASK_PSTATE ;
 TYPE_9__* current ;
 int down_read (int *) ;
 int fixup_user_fault (TYPE_9__*,TYPE_8__*,unsigned long,int ,int*) ;
 unsigned long gfn_to_hva (int ,int ) ;
 int gpa_to_gfn (unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int kvm_s390_get_regs_rre (struct kvm_vcpu*,int*,int*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 unsigned long kvm_s390_logical_to_effective (struct kvm_vcpu*,unsigned long) ;
 unsigned long kvm_s390_real_to_abs (struct kvm_vcpu*,unsigned long) ;
 int kvm_s390_set_psw_cc (struct kvm_vcpu*,int) ;
 int reset_guest_reference_bit (TYPE_8__*,unsigned long) ;
 int try_handle_skey (struct kvm_vcpu*) ;
 int up_read (int *) ;

__attribute__((used)) static int handle_rrbe(struct kvm_vcpu *vcpu)
{
 unsigned long vmaddr, gaddr;
 int reg1, reg2;
 bool unlocked;
 int rc;

 vcpu->stat.instruction_rrbe++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 rc = try_handle_skey(vcpu);
 if (rc)
  return rc != -EAGAIN ? rc : 0;

 kvm_s390_get_regs_rre(vcpu, &reg1, &reg2);

 gaddr = vcpu->run->s.regs.gprs[reg2] & PAGE_MASK;
 gaddr = kvm_s390_logical_to_effective(vcpu, gaddr);
 gaddr = kvm_s390_real_to_abs(vcpu, gaddr);
 vmaddr = gfn_to_hva(vcpu->kvm, gpa_to_gfn(gaddr));
 if (kvm_is_error_hva(vmaddr))
  return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
retry:
 unlocked = 0;
 down_read(&current->mm->mmap_sem);
 rc = reset_guest_reference_bit(current->mm, vmaddr);
 if (rc < 0) {
  rc = fixup_user_fault(current, current->mm, vmaddr,
          FAULT_FLAG_WRITE, &unlocked);
  if (!rc) {
   up_read(&current->mm->mmap_sem);
   goto retry;
  }
 }
 up_read(&current->mm->mmap_sem);
 if (rc == -EFAULT)
  return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
 if (rc < 0)
  return rc;
 kvm_s390_set_psw_cc(vcpu, rc);
 return 0;
}
