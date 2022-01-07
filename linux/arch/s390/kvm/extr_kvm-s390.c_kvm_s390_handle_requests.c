
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* sie_block; int gmap; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_4__* kvm; int vcpu_id; } ;
struct TYPE_11__ {int ihcpu; int ecb2; int ictl; } ;
struct TYPE_7__ {scalar_t__ use_cmma; } ;
struct TYPE_10__ {TYPE_3__* mm; TYPE_1__ arch; } ;
struct TYPE_8__ {scalar_t__ uses_cmm; } ;
struct TYPE_9__ {TYPE_2__ context; } ;


 int CPUSTAT_IBS ;
 int ECB2_CMMA ;
 int ICTL_OPEREXC ;
 int KVM_REQ_DISABLE_IBS ;
 int KVM_REQ_ENABLE_IBS ;
 int KVM_REQ_ICPT_OPEREXC ;
 int KVM_REQ_MMU_RELOAD ;
 int KVM_REQ_START_MIGRATION ;
 int KVM_REQ_STOP_MIGRATION ;
 int KVM_REQ_TLB_FLUSH ;
 int KVM_REQ_UNHALT ;
 int KVM_REQ_VSIE_RESTART ;
 int PAGE_SIZE ;
 int PROT_WRITE ;
 int gmap_mprotect_notify (int ,int ,int,int ) ;
 scalar_t__ ibs_enabled (struct kvm_vcpu*) ;
 scalar_t__ kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_request_pending (struct kvm_vcpu*) ;
 int kvm_s390_clear_cpuflags (struct kvm_vcpu*,int ) ;
 int kvm_s390_get_prefix (struct kvm_vcpu*) ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;
 int kvm_s390_vcpu_request_handled (struct kvm_vcpu*) ;
 int trace_kvm_s390_enable_disable_ibs (int ,int) ;

__attribute__((used)) static int kvm_s390_handle_requests(struct kvm_vcpu *vcpu)
{
retry:
 kvm_s390_vcpu_request_handled(vcpu);
 if (!kvm_request_pending(vcpu))
  return 0;







 if (kvm_check_request(KVM_REQ_MMU_RELOAD, vcpu)) {
  int rc;
  rc = gmap_mprotect_notify(vcpu->arch.gmap,
       kvm_s390_get_prefix(vcpu),
       PAGE_SIZE * 2, PROT_WRITE);
  if (rc) {
   kvm_make_request(KVM_REQ_MMU_RELOAD, vcpu);
   return rc;
  }
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_TLB_FLUSH, vcpu)) {
  vcpu->arch.sie_block->ihcpu = 0xffff;
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_ENABLE_IBS, vcpu)) {
  if (!ibs_enabled(vcpu)) {
   trace_kvm_s390_enable_disable_ibs(vcpu->vcpu_id, 1);
   kvm_s390_set_cpuflags(vcpu, CPUSTAT_IBS);
  }
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_DISABLE_IBS, vcpu)) {
  if (ibs_enabled(vcpu)) {
   trace_kvm_s390_enable_disable_ibs(vcpu->vcpu_id, 0);
   kvm_s390_clear_cpuflags(vcpu, CPUSTAT_IBS);
  }
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_ICPT_OPEREXC, vcpu)) {
  vcpu->arch.sie_block->ictl |= ICTL_OPEREXC;
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_START_MIGRATION, vcpu)) {





  vcpu->arch.sie_block->ecb2 &= ~ECB2_CMMA;
  goto retry;
 }

 if (kvm_check_request(KVM_REQ_STOP_MIGRATION, vcpu)) {




  if ((vcpu->kvm->arch.use_cmma) &&
      (vcpu->kvm->mm->context.uses_cmm))
   vcpu->arch.sie_block->ecb2 |= ECB2_CMMA;
  goto retry;
 }


 kvm_clear_request(KVM_REQ_UNHALT, vcpu);

 kvm_clear_request(KVM_REQ_VSIE_RESTART, vcpu);

 return 0;
}
