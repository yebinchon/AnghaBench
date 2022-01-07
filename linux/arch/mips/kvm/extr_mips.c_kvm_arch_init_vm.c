
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgd; } ;
struct TYPE_4__ {TYPE_1__ gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;


 int EINVAL ;
 int ENOMEM ;


 int kvm_pgd_alloc () ;

int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
{
 switch (type) {



 case 129:

  break;
 default:

  return -EINVAL;
 };


 kvm->arch.gpa_mm.pgd = kvm_pgd_alloc();
 if (!kvm->arch.gpa_mm.pgd)
  return -ENOMEM;

 return 0;
}
