
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int ,int *) ;
 int kvm_age_hva_handler ;

int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
{
 return handle_hva_to_gpa(kvm, start, end, kvm_age_hva_handler, ((void*)0));
}
