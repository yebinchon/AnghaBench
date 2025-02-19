
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


struct TYPE_12__ {int slb_max; TYPE_5__* slb; int pvr; } ;
struct kvm_vcpu {TYPE_6__ arch; } ;
struct TYPE_8__ {TYPE_1__* slb; } ;
struct TYPE_9__ {TYPE_2__ ppc64; } ;
struct TYPE_10__ {TYPE_3__ s; } ;
struct kvm_sregs {TYPE_4__ u; int pvr; } ;
struct TYPE_11__ {int origv; int orige; } ;
struct TYPE_7__ {int slbv; int slbe; } ;


 int memset (struct kvm_sregs*,int ,int) ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_get_sregs_hv(struct kvm_vcpu *vcpu,
         struct kvm_sregs *sregs)
{
 int i;

 memset(sregs, 0, sizeof(struct kvm_sregs));
 sregs->pvr = vcpu->arch.pvr;
 for (i = 0; i < vcpu->arch.slb_max; i++) {
  sregs->u.s.ppc64.slb[i].slbe = vcpu->arch.slb[i].orige;
  sregs->u.s.ppc64.slb[i].slbv = vcpu->arch.slb[i].origv;
 }

 return 0;
}
