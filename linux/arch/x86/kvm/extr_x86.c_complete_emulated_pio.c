
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct TYPE_4__ {TYPE_1__ pio; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int BUG_ON (int) ;
 int complete_emulated_io (struct kvm_vcpu*) ;

__attribute__((used)) static int complete_emulated_pio(struct kvm_vcpu *vcpu)
{
 BUG_ON(!vcpu->arch.pio.count);

 return complete_emulated_io(vcpu);
}
