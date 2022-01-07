
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
struct kvm_svm {struct kvm kvm; } ;


 int GFP_KERNEL_ACCOUNT ;
 int PAGE_KERNEL ;
 int __GFP_ZERO ;
 struct kvm_svm* __vmalloc (int,int,int ) ;

__attribute__((used)) static struct kvm *svm_vm_alloc(void)
{
 struct kvm_svm *kvm_svm = __vmalloc(sizeof(struct kvm_svm),
         GFP_KERNEL_ACCOUNT | __GFP_ZERO,
         PAGE_KERNEL);
 return &kvm_svm->kvm;
}
