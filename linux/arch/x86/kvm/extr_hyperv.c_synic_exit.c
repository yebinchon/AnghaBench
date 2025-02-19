
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu_hv_synic {int msg_page; int evt_page; int control; } ;
struct TYPE_6__ {int msg_page; int evt_page; int control; int msr; } ;
struct TYPE_7__ {TYPE_2__ synic; } ;
struct TYPE_8__ {TYPE_3__ u; int type; } ;
struct kvm_vcpu_hv {TYPE_4__ exit; } ;
struct TYPE_5__ {struct kvm_vcpu_hv hyperv; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_EXIT_HYPERV_SYNIC ;
 int KVM_REQ_HV_EXIT ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 struct kvm_vcpu* synic_to_vcpu (struct kvm_vcpu_hv_synic*) ;

__attribute__((used)) static void synic_exit(struct kvm_vcpu_hv_synic *synic, u32 msr)
{
 struct kvm_vcpu *vcpu = synic_to_vcpu(synic);
 struct kvm_vcpu_hv *hv_vcpu = &vcpu->arch.hyperv;

 hv_vcpu->exit.type = KVM_EXIT_HYPERV_SYNIC;
 hv_vcpu->exit.u.synic.msr = msr;
 hv_vcpu->exit.u.synic.control = synic->control;
 hv_vcpu->exit.u.synic.evt_page = synic->evt_page;
 hv_vcpu->exit.u.synic.msg_page = synic->msg_page;

 kvm_make_request(KVM_REQ_HV_EXIT, vcpu);
}
