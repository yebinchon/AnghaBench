
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {unsigned long cr2; } ;
struct TYPE_19__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_2__* vmcb; } ;
struct TYPE_16__ {int exit_info_1; scalar_t__ exit_code; } ;
struct TYPE_17__ {TYPE_1__ control; } ;


 int CR_VALID ;
 int SVM_EXITINFO_REG_MASK ;
 scalar_t__ SVM_EXIT_CR0_SEL_WRITE ;
 int SVM_EXIT_READ_CR0 ;
 int SVM_EXIT_WRITE_CR0 ;
 int UD_VECTOR ;
 int WARN (int,char*,int) ;
 int X86_FEATURE_DECODEASSISTS ;
 int check_selective_cr0_intercepted (struct vcpu_svm*,unsigned long) ;
 int emulate_on_interception (struct vcpu_svm*) ;
 int kvm_complete_insn_gp (TYPE_4__*,int) ;
 unsigned long kvm_get_cr8 (TYPE_4__*) ;
 int kvm_queue_exception (TYPE_4__*,int ) ;
 unsigned long kvm_read_cr0 (TYPE_4__*) ;
 unsigned long kvm_read_cr3 (TYPE_4__*) ;
 unsigned long kvm_read_cr4 (TYPE_4__*) ;
 unsigned long kvm_register_read (TYPE_4__*,int) ;
 int kvm_register_write (TYPE_4__*,int,unsigned long) ;
 int kvm_set_cr0 (TYPE_4__*,unsigned long) ;
 int kvm_set_cr3 (TYPE_4__*,unsigned long) ;
 int kvm_set_cr4 (TYPE_4__*,unsigned long) ;
 int kvm_set_cr8 (TYPE_4__*,unsigned long) ;
 int static_cpu_has (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cr_interception(struct vcpu_svm *svm)
{
 int reg, cr;
 unsigned long val;
 int err;

 if (!static_cpu_has(X86_FEATURE_DECODEASSISTS))
  return emulate_on_interception(svm);

 if (unlikely((svm->vmcb->control.exit_info_1 & CR_VALID) == 0))
  return emulate_on_interception(svm);

 reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
 if (svm->vmcb->control.exit_code == SVM_EXIT_CR0_SEL_WRITE)
  cr = SVM_EXIT_WRITE_CR0 - SVM_EXIT_READ_CR0;
 else
  cr = svm->vmcb->control.exit_code - SVM_EXIT_READ_CR0;

 err = 0;
 if (cr >= 16) {
  cr -= 16;
  val = kvm_register_read(&svm->vcpu, reg);
  switch (cr) {
  case 0:
   if (!check_selective_cr0_intercepted(svm, val))
    err = kvm_set_cr0(&svm->vcpu, val);
   else
    return 1;

   break;
  case 3:
   err = kvm_set_cr3(&svm->vcpu, val);
   break;
  case 4:
   err = kvm_set_cr4(&svm->vcpu, val);
   break;
  case 8:
   err = kvm_set_cr8(&svm->vcpu, val);
   break;
  default:
   WARN(1, "unhandled write to CR%d", cr);
   kvm_queue_exception(&svm->vcpu, UD_VECTOR);
   return 1;
  }
 } else {
  switch (cr) {
  case 0:
   val = kvm_read_cr0(&svm->vcpu);
   break;
  case 2:
   val = svm->vcpu.arch.cr2;
   break;
  case 3:
   val = kvm_read_cr3(&svm->vcpu);
   break;
  case 4:
   val = kvm_read_cr4(&svm->vcpu);
   break;
  case 8:
   val = kvm_get_cr8(&svm->vcpu);
   break;
  default:
   WARN(1, "unhandled read from CR%d", cr);
   kvm_queue_exception(&svm->vcpu, UD_VECTOR);
   return 1;
  }
  kvm_register_write(&svm->vcpu, reg, val);
 }
 return kvm_complete_insn_gp(&svm->vcpu, err);
}
