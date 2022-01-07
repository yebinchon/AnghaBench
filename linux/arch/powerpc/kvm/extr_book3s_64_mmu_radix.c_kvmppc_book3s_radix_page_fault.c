
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fault_gpa; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_run {int dummy; } ;
struct kvm_memory_slot {int flags; } ;
struct TYPE_4__ {int lpid; int pgtable; } ;
struct kvm {int mmu_lock; TYPE_2__ arch; } ;


 unsigned long DSISR_BADACCESS ;
 unsigned long DSISR_BAD_FAULT_64S ;
 unsigned long DSISR_ISSTORE ;
 unsigned long DSISR_NOHPTE ;
 unsigned long DSISR_PROTFAULT ;
 unsigned long DSISR_PRTABLE_FAULT ;
 unsigned long DSISR_SET_RC ;
 unsigned long DSISR_UNSUPP_MMU ;
 long EAGAIN ;
 int EFAULT ;
 int KVM_MEMSLOT_INVALID ;
 int KVM_MEM_READONLY ;
 unsigned long PAGE_SHIFT ;
 int RESUME_GUEST ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,unsigned long) ;
 long kvmppc_book3s_instantiate_page (struct kvm_vcpu*,unsigned long,struct kvm_memory_slot*,int,int,int *,int *) ;
 int kvmppc_core_queue_data_storage (struct kvm_vcpu*,unsigned long,unsigned long) ;
 int kvmppc_hv_emulate_mmio (struct kvm_run*,struct kvm_vcpu*,unsigned long,unsigned long,int) ;
 scalar_t__ kvmppc_hv_handle_set_rc (struct kvm*,int ,int,unsigned long,int ) ;
 int pr_err (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvmppc_book3s_radix_page_fault(struct kvm_run *run, struct kvm_vcpu *vcpu,
       unsigned long ea, unsigned long dsisr)
{
 struct kvm *kvm = vcpu->kvm;
 unsigned long gpa, gfn;
 struct kvm_memory_slot *memslot;
 long ret;
 bool writing = !!(dsisr & DSISR_ISSTORE);
 bool kvm_ro = 0;


 if (dsisr & DSISR_UNSUPP_MMU) {
  pr_err("KVM: Got unsupported MMU fault\n");
  return -EFAULT;
 }
 if (dsisr & DSISR_BADACCESS) {

  pr_err("KVM: Got radix HV page fault with DSISR=%lx\n", dsisr);
  kvmppc_core_queue_data_storage(vcpu, ea, dsisr);
  return RESUME_GUEST;
 }


 gpa = vcpu->arch.fault_gpa & ~0xfffUL;
 gpa &= ~0xF000000000000000ul;
 gfn = gpa >> PAGE_SHIFT;
 if (!(dsisr & DSISR_PRTABLE_FAULT))
  gpa |= ea & 0xfff;


 memslot = gfn_to_memslot(kvm, gfn);


 if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID)) {
  if (dsisr & (DSISR_PRTABLE_FAULT | DSISR_BADACCESS |
        DSISR_SET_RC)) {




   kvmppc_core_queue_data_storage(vcpu, ea, dsisr);
   return RESUME_GUEST;
  }
  return kvmppc_hv_emulate_mmio(run, vcpu, gpa, ea, writing);
 }

 if (memslot->flags & KVM_MEM_READONLY) {
  if (writing) {

   kvmppc_core_queue_data_storage(vcpu, ea, DSISR_ISSTORE |
             DSISR_PROTFAULT);
   return RESUME_GUEST;
  }
  kvm_ro = 1;
 }


 if (dsisr & DSISR_SET_RC) {
  spin_lock(&kvm->mmu_lock);
  if (kvmppc_hv_handle_set_rc(kvm, kvm->arch.pgtable,
         writing, gpa, kvm->arch.lpid))
   dsisr &= ~DSISR_SET_RC;
  spin_unlock(&kvm->mmu_lock);

  if (!(dsisr & (DSISR_BAD_FAULT_64S | DSISR_NOHPTE |
          DSISR_PROTFAULT | DSISR_SET_RC)))
   return RESUME_GUEST;
 }


 ret = kvmppc_book3s_instantiate_page(vcpu, gpa, memslot, writing,
          kvm_ro, ((void*)0), ((void*)0));

 if (ret == 0 || ret == -EAGAIN)
  ret = RESUME_GUEST;
 return ret;
}
