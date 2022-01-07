
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {void* pgd; } ;
struct TYPE_2__ {struct mm_struct guest_user_mm; struct mm_struct guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ENOMEM ;
 void* pgd_alloc (struct mm_struct*) ;
 int pgd_free (struct mm_struct*,void*) ;

__attribute__((used)) static int kvm_trap_emul_vcpu_init(struct kvm_vcpu *vcpu)
{
 struct mm_struct *kern_mm = &vcpu->arch.guest_kernel_mm;
 struct mm_struct *user_mm = &vcpu->arch.guest_user_mm;





 kern_mm->pgd = pgd_alloc(kern_mm);
 if (!kern_mm->pgd)
  return -ENOMEM;

 user_mm->pgd = pgd_alloc(user_mm);
 if (!user_mm->pgd) {
  pgd_free(kern_mm, kern_mm->pgd);
  return -ENOMEM;
 }

 return 0;
}
