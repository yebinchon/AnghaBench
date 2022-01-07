
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 long kvmhv_copy_tofrom_guest_radix (struct kvm_vcpu*,int ,void*,int *,unsigned long) ;
 int memset (void*,int ,long) ;

long kvmhv_copy_from_guest_radix(struct kvm_vcpu *vcpu, gva_t eaddr, void *to,
     unsigned long n)
{
 long ret;

 ret = kvmhv_copy_tofrom_guest_radix(vcpu, eaddr, to, ((void*)0), n);
 if (ret > 0)
  memset(to + (n - ret), 0, ret);

 return ret;
}
