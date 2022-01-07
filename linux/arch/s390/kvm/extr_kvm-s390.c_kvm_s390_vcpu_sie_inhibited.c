
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int prog20; } ;


 int PROG_BLOCK_SIE ;
 int PROG_REQUEST ;
 int atomic_read (int *) ;

bool kvm_s390_vcpu_sie_inhibited(struct kvm_vcpu *vcpu)
{
 return atomic_read(&vcpu->arch.sie_block->prog20) &
        (PROG_BLOCK_SIE | PROG_REQUEST);
}
