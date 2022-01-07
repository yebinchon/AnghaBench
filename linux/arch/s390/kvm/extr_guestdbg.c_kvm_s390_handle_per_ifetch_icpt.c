
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int guest_debug; } ;
struct kvm_s390_pgm_info {int per_address; int per_code; int code; } ;
struct TYPE_3__ {int* gcr; int gpsw; } ;


 int KVM_GUESTDBG_EXIT_PENDING ;
 int PER_CODE_IFETCH ;
 int PER_EVENT_IFETCH ;
 int PGM_ADDRESSING ;
 int PGM_PER ;
 int __rewind_psw (int ,int const) ;
 scalar_t__ debug_exit_required (struct kvm_vcpu*,int ,int ) ;
 int guest_per_enabled (struct kvm_vcpu*) ;
 int guestdbg_enabled (struct kvm_vcpu*) ;
 scalar_t__ in_addr_range (unsigned long,int const,int const) ;
 int kvm_s390_get_ilen (struct kvm_vcpu*) ;
 int kvm_s390_inject_prog_irq (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int per_fetched_addr (struct kvm_vcpu*,unsigned long*) ;

int kvm_s390_handle_per_ifetch_icpt(struct kvm_vcpu *vcpu)
{
 const u64 cr10 = vcpu->arch.sie_block->gcr[10];
 const u64 cr11 = vcpu->arch.sie_block->gcr[11];
 const u8 ilen = kvm_s390_get_ilen(vcpu);
 struct kvm_s390_pgm_info pgm_info = {
  .code = PGM_PER,
  .per_code = PER_CODE_IFETCH,
  .per_address = __rewind_psw(vcpu->arch.sie_block->gpsw, ilen),
 };
 unsigned long fetched_addr;
 int rc;






 if (!guestdbg_enabled(vcpu))
  return kvm_s390_inject_prog_irq(vcpu, &pgm_info);

 if (debug_exit_required(vcpu, pgm_info.per_code, pgm_info.per_address))
  vcpu->guest_debug |= KVM_GUESTDBG_EXIT_PENDING;

 if (!guest_per_enabled(vcpu) ||
     !(vcpu->arch.sie_block->gcr[9] & PER_EVENT_IFETCH))
  return 0;

 rc = per_fetched_addr(vcpu, &fetched_addr);
 if (rc < 0)
  return rc;
 if (rc)

  return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);

 if (in_addr_range(fetched_addr, cr10, cr11))
  return kvm_s390_inject_prog_irq(vcpu, &pgm_info);
 return 0;
}
