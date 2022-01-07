
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int ,int *) ;
 int kvm_test_age_hva_handler ;

int kvm_test_age_hva(struct kvm *kvm, unsigned long hva)
{
 return handle_hva_to_gpa(kvm, hva, hva, kvm_test_age_hva_handler, ((void*)0));
}
