
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int fpsr; int vregs; } ;


 scalar_t__ KVM_REG_ARM_CORE_REG (int ) ;
 TYPE_1__ fp_regs ;

__attribute__((used)) static bool core_reg_offset_is_vreg(u64 off)
{
 return off >= KVM_REG_ARM_CORE_REG(fp_regs.vregs) &&
  off < KVM_REG_ARM_CORE_REG(fp_regs.fpsr);
}
