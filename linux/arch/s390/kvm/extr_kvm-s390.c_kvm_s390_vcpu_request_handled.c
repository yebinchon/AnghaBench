
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int prog20; } ;


 int PROG_REQUEST ;
 int atomic_andnot (int ,int *) ;

__attribute__((used)) static void kvm_s390_vcpu_request_handled(struct kvm_vcpu *vcpu)
{
 atomic_andnot(PROG_REQUEST, &vcpu->arch.sie_block->prog20);
}
