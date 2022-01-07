
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 long kvmhv_copy_tofrom_guest_radix (struct kvm_vcpu*,int ,int *,void*,unsigned long) ;

long kvmhv_copy_to_guest_radix(struct kvm_vcpu *vcpu, gva_t eaddr, void *from,
          unsigned long n)
{
 return kvmhv_copy_tofrom_guest_radix(vcpu, eaddr, ((void*)0), from, n);
}
