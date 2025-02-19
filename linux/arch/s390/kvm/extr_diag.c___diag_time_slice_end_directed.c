
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


struct TYPE_12__ {int diagnose_9c; } ;
struct TYPE_11__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {int vcpu_id; int kvm; TYPE_6__ stat; TYPE_5__ arch; TYPE_3__* run; } ;
struct TYPE_10__ {int ipa; } ;
struct TYPE_7__ {int* gprs; } ;
struct TYPE_8__ {TYPE_1__ regs; } ;
struct TYPE_9__ {TYPE_2__ s; } ;


 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int) ;
 struct kvm_vcpu* kvm_get_vcpu_by_id (int ,int) ;
 int kvm_vcpu_yield_to (struct kvm_vcpu*) ;

__attribute__((used)) static int __diag_time_slice_end_directed(struct kvm_vcpu *vcpu)
{
 struct kvm_vcpu *tcpu;
 int tid;

 tid = vcpu->run->s.regs.gprs[(vcpu->arch.sie_block->ipa & 0xf0) >> 4];
 vcpu->stat.diagnose_9c++;
 VCPU_EVENT(vcpu, 5, "diag time slice end directed to %d", tid);

 if (tid == vcpu->vcpu_id)
  return 0;

 tcpu = kvm_get_vcpu_by_id(vcpu->kvm, tid);
 if (tcpu)
  kvm_vcpu_yield_to(tcpu);
 return 0;
}
