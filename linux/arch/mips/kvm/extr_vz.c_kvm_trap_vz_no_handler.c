
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int host_cp0_cause; unsigned long host_cp0_badvaddr; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_1__* run; TYPE_2__ arch; } ;
struct TYPE_3__ {int exit_reason; } ;


 int CAUSEB_EXCCODE ;
 int CAUSEF_BD ;
 int CAUSEF_EXCCODE ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int RESUME_HOST ;
 int kvm_arch_vcpu_dump_regs (struct kvm_vcpu*) ;
 int kvm_err (char*,int,int*,int,unsigned long,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int*) ;
 int read_gc0_status () ;

__attribute__((used)) static int kvm_trap_vz_no_handler(struct kvm_vcpu *vcpu)
{
 u32 *opc = (u32 *) vcpu->arch.pc;
 u32 cause = vcpu->arch.host_cp0_cause;
 u32 exccode = (cause & CAUSEF_EXCCODE) >> CAUSEB_EXCCODE;
 unsigned long badvaddr = vcpu->arch.host_cp0_badvaddr;
 u32 inst = 0;




 if (cause & CAUSEF_BD)
  opc += 1;
 kvm_get_badinstr(opc, vcpu, &inst);

 kvm_err("Exception Code: %d not handled @ PC: %p, inst: 0x%08x BadVaddr: %#lx Status: %#x\n",
  exccode, opc, inst, badvaddr,
  read_gc0_status());
 kvm_arch_vcpu_dump_regs(vcpu);
 vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
 return RESUME_HOST;
}
