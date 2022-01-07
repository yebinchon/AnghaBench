
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nip; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 scalar_t__ DEBUG_MMU_PTE_IP ;

__attribute__((used)) static inline bool check_debug_ip(struct kvm_vcpu *vcpu)
{



 return 1;

}
