
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EFER_LMA ;
 int X86_CR4_LA57 ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline bool is_la57_mode(struct kvm_vcpu *vcpu)
{




 return 0;

}
