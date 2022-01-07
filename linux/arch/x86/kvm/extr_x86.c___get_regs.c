
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int emulate_regs_need_sync_to_vcpu; int emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int rflags; int rip; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rbp; int rsp; int rdi; int rsi; int rdx; int rcx; int rbx; int rax; } ;


 int emulator_writeback_register_cache (int *) ;
 int kvm_get_rflags (struct kvm_vcpu*) ;
 int kvm_r10_read (struct kvm_vcpu*) ;
 int kvm_r11_read (struct kvm_vcpu*) ;
 int kvm_r12_read (struct kvm_vcpu*) ;
 int kvm_r13_read (struct kvm_vcpu*) ;
 int kvm_r14_read (struct kvm_vcpu*) ;
 int kvm_r15_read (struct kvm_vcpu*) ;
 int kvm_r8_read (struct kvm_vcpu*) ;
 int kvm_r9_read (struct kvm_vcpu*) ;
 int kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rbp_read (struct kvm_vcpu*) ;
 int kvm_rbx_read (struct kvm_vcpu*) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_rdi_read (struct kvm_vcpu*) ;
 int kvm_rdx_read (struct kvm_vcpu*) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_rsi_read (struct kvm_vcpu*) ;
 int kvm_rsp_read (struct kvm_vcpu*) ;

__attribute__((used)) static void __get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 if (vcpu->arch.emulate_regs_need_sync_to_vcpu) {







  emulator_writeback_register_cache(&vcpu->arch.emulate_ctxt);
  vcpu->arch.emulate_regs_need_sync_to_vcpu = 0;
 }
 regs->rax = kvm_rax_read(vcpu);
 regs->rbx = kvm_rbx_read(vcpu);
 regs->rcx = kvm_rcx_read(vcpu);
 regs->rdx = kvm_rdx_read(vcpu);
 regs->rsi = kvm_rsi_read(vcpu);
 regs->rdi = kvm_rdi_read(vcpu);
 regs->rsp = kvm_rsp_read(vcpu);
 regs->rbp = kvm_rbp_read(vcpu);
 regs->rip = kvm_rip_read(vcpu);
 regs->rflags = kvm_get_rflags(vcpu);
}
