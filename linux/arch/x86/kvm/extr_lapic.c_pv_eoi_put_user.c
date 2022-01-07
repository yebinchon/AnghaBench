
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 int kvm_write_guest_cached (int ,int *,int *,int) ;

__attribute__((used)) static int pv_eoi_put_user(struct kvm_vcpu *vcpu, u8 val)
{

 return kvm_write_guest_cached(vcpu->kvm, &vcpu->arch.pv_eoi.data, &val,
          sizeof(val));
}
