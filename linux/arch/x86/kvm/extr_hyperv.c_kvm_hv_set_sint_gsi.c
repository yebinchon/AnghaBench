
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvm_vcpu_hv_synic {int * sint_to_gsi; } ;
struct kvm {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int atomic_set (int *,int) ;
 struct kvm_vcpu_hv_synic* synic_get (struct kvm*,size_t) ;

__attribute__((used)) static int kvm_hv_set_sint_gsi(struct kvm *kvm, u32 vpidx, u32 sint, int gsi)
{
 struct kvm_vcpu_hv_synic *synic;

 synic = synic_get(kvm, vpidx);
 if (!synic)
  return -EINVAL;

 if (sint >= ARRAY_SIZE(synic->sint_to_gsi))
  return -EINVAL;

 atomic_set(&synic->sint_to_gsi[sint], gsi);
 return 0;
}
