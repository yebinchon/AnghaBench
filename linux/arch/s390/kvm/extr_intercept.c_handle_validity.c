
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int exit_validity; } ;
struct TYPE_6__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {int kvm; TYPE_3__ stat; TYPE_2__ arch; } ;
struct TYPE_8__ {int pid; } ;
struct TYPE_5__ {int ipb; } ;


 int EINVAL ;
 int KVM_EVENT (int,char*,int,int ,int ) ;
 int WARN_ONCE (int,char*,int) ;
 TYPE_4__* current ;
 int trace_kvm_s390_intercept_validity (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_validity(struct kvm_vcpu *vcpu)
{
 int viwhy = vcpu->arch.sie_block->ipb >> 16;

 vcpu->stat.exit_validity++;
 trace_kvm_s390_intercept_validity(vcpu, viwhy);
 KVM_EVENT(3, "validity intercept 0x%x for pid %u (kvm 0x%pK)", viwhy,
    current->pid, vcpu->kvm);


 WARN_ONCE(viwhy != 0x44, "kvm: unhandled validity intercept 0x%x\n",
    viwhy);
 return -EINVAL;
}
