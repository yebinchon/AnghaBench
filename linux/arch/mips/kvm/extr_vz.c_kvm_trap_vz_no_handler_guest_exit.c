
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEF_BD ;
 int EMULATE_FAIL ;
 int kvm_err (char*,int,int*,int,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int*) ;
 int read_gc0_status () ;

__attribute__((used)) static enum emulation_result kvm_trap_vz_no_handler_guest_exit(u32 gexccode,
       u32 cause,
       u32 *opc,
       struct kvm_vcpu *vcpu)
{
 u32 inst;




 if (cause & CAUSEF_BD)
  opc += 1;
 kvm_get_badinstr(opc, vcpu, &inst);

 kvm_err("Guest Exception Code: %d not yet handled @ PC: %p, inst: 0x%08x  Status: %#x\n",
  gexccode, opc, inst, read_gc0_status());

 return EMULATE_FAIL;
}
