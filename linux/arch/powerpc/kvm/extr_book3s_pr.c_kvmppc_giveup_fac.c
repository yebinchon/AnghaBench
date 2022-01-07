
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long ulong ;
struct TYPE_5__ {unsigned long long shadow_fscr; int tar; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {int tar; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 unsigned long long FSCR_TAR ;

 int SPRN_TAR ;
 TYPE_3__* current ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;

void kvmppc_giveup_fac(struct kvm_vcpu *vcpu, ulong fac)
{
}
