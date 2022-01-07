
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
struct TYPE_4__ {int emulate_regs_need_sync_from_vcpu; int emulate_regs_need_sync_to_vcpu; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_regs {int rflags; int rip; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rbp; int rsp; int rdi; int rsi; int rdx; int rcx; int rbx; int rax; } ;


 int KVM_REQ_EVENT ;
 int X86_EFLAGS_FIXED ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_r10_write (struct kvm_vcpu*,int ) ;
 int kvm_r11_write (struct kvm_vcpu*,int ) ;
 int kvm_r12_write (struct kvm_vcpu*,int ) ;
 int kvm_r13_write (struct kvm_vcpu*,int ) ;
 int kvm_r14_write (struct kvm_vcpu*,int ) ;
 int kvm_r15_write (struct kvm_vcpu*,int ) ;
 int kvm_r8_write (struct kvm_vcpu*,int ) ;
 int kvm_r9_write (struct kvm_vcpu*,int ) ;
 int kvm_rax_write (struct kvm_vcpu*,int ) ;
 int kvm_rbp_write (struct kvm_vcpu*,int ) ;
 int kvm_rbx_write (struct kvm_vcpu*,int ) ;
 int kvm_rcx_write (struct kvm_vcpu*,int ) ;
 int kvm_rdi_write (struct kvm_vcpu*,int ) ;
 int kvm_rdx_write (struct kvm_vcpu*,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 int kvm_rsi_write (struct kvm_vcpu*,int ) ;
 int kvm_rsp_write (struct kvm_vcpu*,int ) ;
 int kvm_set_rflags (struct kvm_vcpu*,int) ;

__attribute__((used)) static void __set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 vcpu->arch.emulate_regs_need_sync_from_vcpu = 1;
 vcpu->arch.emulate_regs_need_sync_to_vcpu = 0;

 kvm_rax_write(vcpu, regs->rax);
 kvm_rbx_write(vcpu, regs->rbx);
 kvm_rcx_write(vcpu, regs->rcx);
 kvm_rdx_write(vcpu, regs->rdx);
 kvm_rsi_write(vcpu, regs->rsi);
 kvm_rdi_write(vcpu, regs->rdi);
 kvm_rsp_write(vcpu, regs->rsp);
 kvm_rbp_write(vcpu, regs->rbp);
 kvm_rip_write(vcpu, regs->rip);
 kvm_set_rflags(vcpu, regs->rflags | X86_EFLAGS_FIXED);

 vcpu->arch.exception.pending = 0;

 kvm_make_request(KVM_REQ_EVENT, vcpu);
}
