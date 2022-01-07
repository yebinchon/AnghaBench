
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 scalar_t__ kvm_has_pckmo_subfunc (struct kvm*,int) ;

__attribute__((used)) static bool kvm_has_pckmo_ecc(struct kvm *kvm)
{

 return kvm_has_pckmo_subfunc(kvm, 32) ||
        kvm_has_pckmo_subfunc(kvm, 33) ||
        kvm_has_pckmo_subfunc(kvm, 34) ||
        kvm_has_pckmo_subfunc(kvm, 40) ||
        kvm_has_pckmo_subfunc(kvm, 41);

}
