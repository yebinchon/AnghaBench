
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_fpu {int xmm; int last_dp; int last_ip; int last_opcode; int ftwx; int fsw; int fcw; int fpr; } ;
struct fxregs_state {int xmm_space; int rdp; int rip; int fop; int twd; int swd; int cwd; int st_space; } ;
struct TYPE_4__ {struct fxregs_state fxsave; } ;
struct TYPE_5__ {TYPE_1__ state; } ;


 int memcpy (int ,int ,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
 struct fxregs_state *fxsave;

 vcpu_load(vcpu);

 fxsave = &vcpu->arch.guest_fpu->state.fxsave;

 memcpy(fxsave->st_space, fpu->fpr, 128);
 fxsave->cwd = fpu->fcw;
 fxsave->swd = fpu->fsw;
 fxsave->twd = fpu->ftwx;
 fxsave->fop = fpu->last_opcode;
 fxsave->rip = fpu->last_ip;
 fxsave->rdp = fpu->last_dp;
 memcpy(fxsave->xmm_space, fpu->xmm, sizeof(fxsave->xmm_space));

 vcpu_put(vcpu);
 return 0;
}
