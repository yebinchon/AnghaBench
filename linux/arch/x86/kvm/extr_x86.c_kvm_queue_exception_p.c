
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_multiple_exception (struct kvm_vcpu*,unsigned int,int,int ,int,unsigned long,int) ;

__attribute__((used)) static void kvm_queue_exception_p(struct kvm_vcpu *vcpu, unsigned nr,
      unsigned long payload)
{
 kvm_multiple_exception(vcpu, nr, 0, 0, 1, payload, 0);
}
