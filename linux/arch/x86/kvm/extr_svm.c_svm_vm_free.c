
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int to_kvm_svm (struct kvm*) ;
 int vfree (int ) ;

__attribute__((used)) static void svm_vm_free(struct kvm *kvm)
{
 vfree(to_kvm_svm(kvm));
}
