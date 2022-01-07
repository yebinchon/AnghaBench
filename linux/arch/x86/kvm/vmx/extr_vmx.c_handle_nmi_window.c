
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nmi_window_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int KVM_REQ_EVENT ;
 int WARN_ON_ONCE (int) ;
 int enable_vnmi ;
 int exec_controls_clearbit (int ,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_nmi_window(struct kvm_vcpu *vcpu)
{
 WARN_ON_ONCE(!enable_vnmi);
 exec_controls_clearbit(to_vmx(vcpu), CPU_BASED_VIRTUAL_NMI_PENDING);
 ++vcpu->stat.nmi_window_exits;
 kvm_make_request(KVM_REQ_EVENT, vcpu);

 return 1;
}
