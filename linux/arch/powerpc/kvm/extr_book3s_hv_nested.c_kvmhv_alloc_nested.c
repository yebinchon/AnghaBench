
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_guest {unsigned int l1_lpid; long shadow_lpid; int radix; int shadow_pgtable; int prev_cpu; int tlb_lock; struct kvm* l1_host; } ;
struct kvm {int mm; } ;


 int GFP_KERNEL ;
 int kfree (struct kvm_nested_guest*) ;
 long kvmppc_alloc_lpid () ;
 struct kvm_nested_guest* kzalloc (int,int ) ;
 int memset (int ,int,int) ;
 int mutex_init (int *) ;
 int pgd_alloc (int ) ;
 int pgd_free (int ,int ) ;

struct kvm_nested_guest *kvmhv_alloc_nested(struct kvm *kvm, unsigned int lpid)
{
 struct kvm_nested_guest *gp;
 long shadow_lpid;

 gp = kzalloc(sizeof(*gp), GFP_KERNEL);
 if (!gp)
  return ((void*)0);
 gp->l1_host = kvm;
 gp->l1_lpid = lpid;
 mutex_init(&gp->tlb_lock);
 gp->shadow_pgtable = pgd_alloc(kvm->mm);
 if (!gp->shadow_pgtable)
  goto out_free;
 shadow_lpid = kvmppc_alloc_lpid();
 if (shadow_lpid < 0)
  goto out_free2;
 gp->shadow_lpid = shadow_lpid;
 gp->radix = 1;

 memset(gp->prev_cpu, -1, sizeof(gp->prev_cpu));

 return gp;

 out_free2:
 pgd_free(kvm->mm, gp->shadow_pgtable);
 out_free:
 kfree(gp);
 return ((void*)0);
}
