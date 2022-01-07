
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_hvm_pagetable_dying {int gpa; int domid; } ;
struct mm_struct {int pgd; } ;


 int DOMID_SELF ;
 int HVMOP_pagetable_dying ;
 int HYPERVISOR_hvm_op (int ,struct xen_hvm_pagetable_dying*) ;
 int WARN_ON_ONCE (int) ;
 int __pa (int ) ;

__attribute__((used)) static void xen_hvm_exit_mmap(struct mm_struct *mm)
{
 struct xen_hvm_pagetable_dying a;
 int rc;

 a.domid = DOMID_SELF;
 a.gpa = __pa(mm->pgd);
 rc = HYPERVISOR_hvm_op(HVMOP_pagetable_dying, &a);
 WARN_ON_ONCE(rc < 0);
}
