
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 int kvm_read_guest_cached (int ,int *,int *,int) ;

__attribute__((used)) static int apf_get_user(struct kvm_vcpu *vcpu, u32 *val)
{

 return kvm_read_guest_cached(vcpu->kvm, &vcpu->arch.apf.data, val,
          sizeof(u32));
}
