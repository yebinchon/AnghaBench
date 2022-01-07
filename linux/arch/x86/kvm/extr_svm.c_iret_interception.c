
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hflags; } ;
struct TYPE_5__ {int nmi_window_exits; } ;
struct TYPE_7__ {TYPE_2__ arch; TYPE_1__ stat; } ;
struct vcpu_svm {TYPE_3__ vcpu; int nmi_iret_rip; } ;


 int HF_IRET_MASK ;
 int INTERCEPT_IRET ;
 int KVM_REQ_EVENT ;
 int clr_intercept (struct vcpu_svm*,int ) ;
 int kvm_make_request (int ,TYPE_3__*) ;
 int kvm_rip_read (TYPE_3__*) ;

__attribute__((used)) static int iret_interception(struct vcpu_svm *svm)
{
 ++svm->vcpu.stat.nmi_window_exits;
 clr_intercept(svm, INTERCEPT_IRET);
 svm->vcpu.arch.hflags |= HF_IRET_MASK;
 svm->nmi_iret_rip = kvm_rip_read(&svm->vcpu);
 kvm_make_request(KVM_REQ_EVENT, &svm->vcpu);
 return 1;
}
