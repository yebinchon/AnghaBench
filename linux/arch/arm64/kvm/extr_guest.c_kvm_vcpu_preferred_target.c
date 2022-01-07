
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_init {int target; } ;
typedef int __u32 ;


 int ENODEV ;
 int kvm_target_cpu () ;
 int memset (struct kvm_vcpu_init*,int ,int) ;

int kvm_vcpu_preferred_target(struct kvm_vcpu_init *init)
{
 int target = kvm_target_cpu();

 if (target < 0)
  return -ENODEV;

 memset(init, 0, sizeof(*init));







 init->target = (__u32)target;

 return 0;
}
