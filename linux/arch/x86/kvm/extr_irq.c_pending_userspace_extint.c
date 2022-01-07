
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_external_vector; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static int pending_userspace_extint(struct kvm_vcpu *v)
{
 return v->arch.pending_external_vector != -1;
}
