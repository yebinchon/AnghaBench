
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_memory_slot {int flags; unsigned long userspace_addr; } ;
struct kvm_hpt_info {int dummy; } ;
struct TYPE_5__ {int virt; } ;
struct TYPE_6__ {unsigned long vrma_slb_v; TYPE_1__ hpt; } ;
struct kvm {int srcu; TYPE_2__ arch; } ;
struct TYPE_8__ {TYPE_3__* mm; } ;
struct TYPE_7__ {int mmap_sem; } ;


 int CPU_FTR_ARCH_300 ;
 int EINVAL ;
 int ENOMEM ;
 int KVM_DEFAULT_HPT_ORDER ;
 int KVM_MEMSLOT_INVALID ;
 int LPCR_VRMASD ;
 int LPCR_VRMASD_SH ;
 int PPC_MIN_HPT_ORDER ;
 unsigned long SLB_VSID_B_1T ;
 unsigned long SLB_VSID_SHIFT_1T ;
 int VM_IO ;
 unsigned long VRMA_VSID ;
 unsigned long __ilog2 (unsigned long) ;
 int cpu_has_feature (int ) ;
 TYPE_4__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (TYPE_3__*,unsigned long) ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,int ) ;
 int kvmppc_allocate_hpt (struct kvm_hpt_info*,int) ;
 int kvmppc_map_vrma (struct kvm_vcpu*,struct kvm_memory_slot*,unsigned long) ;
 int kvmppc_set_hpt (struct kvm*,struct kvm_hpt_info*) ;
 int kvmppc_update_lpcr (struct kvm*,unsigned long,int ) ;
 int pr_err (char*) ;
 unsigned long slb_pgsize_encoding (unsigned long) ;
 int smp_wmb () ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int up_read (int *) ;
 unsigned long vma_kernel_pagesize (struct vm_area_struct*) ;

__attribute__((used)) static int kvmppc_hv_setup_htab_rma(struct kvm_vcpu *vcpu)
{
 int err = 0;
 struct kvm *kvm = vcpu->kvm;
 unsigned long hva;
 struct kvm_memory_slot *memslot;
 struct vm_area_struct *vma;
 unsigned long lpcr = 0, senc;
 unsigned long psize, porder;
 int srcu_idx;


 if (!kvm->arch.hpt.virt) {
  int order = KVM_DEFAULT_HPT_ORDER;
  struct kvm_hpt_info info;

  err = kvmppc_allocate_hpt(&info, order);



  while ((err == -ENOMEM) && --order >= PPC_MIN_HPT_ORDER)
   err = kvmppc_allocate_hpt(&info, order);

  if (err < 0) {
   pr_err("KVM: Couldn't alloc HPT\n");
   goto out;
  }

  kvmppc_set_hpt(kvm, &info);
 }


 srcu_idx = srcu_read_lock(&kvm->srcu);
 memslot = gfn_to_memslot(kvm, 0);


 err = -EINVAL;
 if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
  goto out_srcu;


 hva = memslot->userspace_addr;
 down_read(&current->mm->mmap_sem);
 vma = find_vma(current->mm, hva);
 if (!vma || vma->vm_start > hva || (vma->vm_flags & VM_IO))
  goto up_out;

 psize = vma_kernel_pagesize(vma);

 up_read(&current->mm->mmap_sem);


 if (psize >= 0x1000000)
  psize = 0x1000000;
 else if (psize >= 0x10000)
  psize = 0x10000;
 else
  psize = 0x1000;
 porder = __ilog2(psize);

 senc = slb_pgsize_encoding(psize);
 kvm->arch.vrma_slb_v = senc | SLB_VSID_B_1T |
  (VRMA_VSID << SLB_VSID_SHIFT_1T);

 kvmppc_map_vrma(vcpu, memslot, porder);


 if (!cpu_has_feature(CPU_FTR_ARCH_300)) {

  lpcr = senc << (LPCR_VRMASD_SH - 4);
  kvmppc_update_lpcr(kvm, lpcr, LPCR_VRMASD);
 }


 smp_wmb();
 err = 0;
 out_srcu:
 srcu_read_unlock(&kvm->srcu, srcu_idx);
 out:
 return err;

 up_out:
 up_read(&current->mm->mmap_sem);
 goto out_srcu;
}
