
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int UD_VECTOR ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_invalid_op(struct kvm_vcpu *vcpu)
{
 kvm_queue_exception(vcpu, UD_VECTOR);
 return 1;
}
