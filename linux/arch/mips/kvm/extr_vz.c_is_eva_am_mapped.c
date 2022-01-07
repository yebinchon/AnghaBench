
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union mips_instruction {int word; } ;
typedef int u32 ;
struct TYPE_2__ {int host_cp0_cause; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s32 ;


 int CAUSEF_BD ;
 unsigned int ST0_ERL ;
 unsigned int ST0_EXL ;
 unsigned int ST0_KSU ;
 scalar_t__ is_eva_access (union mips_instruction) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int *) ;
 unsigned int read_gc0_status () ;

__attribute__((used)) static bool is_eva_am_mapped(struct kvm_vcpu *vcpu, unsigned int am, bool eu)
{
 u32 am_lookup;
 int err;
 am_lookup = 0x70080000 << am;
 if ((s32)am_lookup < 0) {




  if (!eu || !(read_gc0_status() & ST0_ERL))
   return 1;
 } else {
  am_lookup <<= 8;
  if ((s32)am_lookup < 0) {
   union mips_instruction inst;
   unsigned int status;
   u32 *opc;





   status = read_gc0_status();
   if (!(status & (ST0_EXL | ST0_ERL)) &&
       (status & ST0_KSU))
    return 1;




   opc = (u32 *)vcpu->arch.pc;
   if (vcpu->arch.host_cp0_cause & CAUSEF_BD)
    opc += 1;
   err = kvm_get_badinstr(opc, vcpu, &inst.word);
   if (!err && is_eva_access(inst))
    return 1;
  }
 }

 return 0;
}
