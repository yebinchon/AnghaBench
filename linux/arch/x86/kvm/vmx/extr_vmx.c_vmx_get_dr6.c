
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int dr6; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static u64 vmx_get_dr6(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.dr6;
}
