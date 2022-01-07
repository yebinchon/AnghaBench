
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {scalar_t__ nested; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EAGAIN ;
 int EINVAL ;
 int kvmhv_copy_to_guest_radix (struct kvm_vcpu*,int ,void*,int) ;
 scalar_t__ kvmhv_vcpu_is_radix (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmhv_store_to_eaddr(struct kvm_vcpu *vcpu, ulong *eaddr, void *ptr,
    int size)
{
 int rc = -EINVAL;

 if (kvmhv_vcpu_is_radix(vcpu)) {
  rc = kvmhv_copy_to_guest_radix(vcpu, *eaddr, ptr, size);

  if (rc > 0)
   rc = -EINVAL;
 }


 if (rc && vcpu->arch.nested)
  rc = -EAGAIN;

 return rc;
}
