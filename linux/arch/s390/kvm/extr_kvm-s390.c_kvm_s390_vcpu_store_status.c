
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kvm_vcpu {TYPE_5__* run; } ;
struct TYPE_7__ {int fpc; } ;
struct TYPE_8__ {TYPE_1__ fpu; } ;
struct TYPE_12__ {TYPE_2__ thread; } ;
struct TYPE_9__ {int acrs; int fpc; } ;
struct TYPE_10__ {TYPE_3__ regs; } ;
struct TYPE_11__ {TYPE_4__ s; } ;


 TYPE_6__* current ;
 int kvm_s390_store_status_unloaded (struct kvm_vcpu*,unsigned long) ;
 int save_access_regs (int ) ;
 int save_fpu_regs () ;

int kvm_s390_vcpu_store_status(struct kvm_vcpu *vcpu, unsigned long addr)
{





 save_fpu_regs();
 vcpu->run->s.regs.fpc = current->thread.fpu.fpc;
 save_access_regs(vcpu->run->s.regs.acrs);

 return kvm_s390_store_status_unloaded(vcpu, addr);
}
