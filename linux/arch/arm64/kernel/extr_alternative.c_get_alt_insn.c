
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alt_instr {int dummy; } ;
typedef unsigned long s32 ;
typedef int __le32 ;


 int BUG () ;
 int SZ_4K ;
 unsigned long aarch64_get_branch_offset (int ) ;
 unsigned long aarch64_insn_adrp_get_offset (int ) ;
 int aarch64_insn_adrp_set_offset (int ,unsigned long) ;
 scalar_t__ aarch64_insn_is_adrp (int ) ;
 scalar_t__ aarch64_insn_is_branch_imm (int ) ;
 scalar_t__ aarch64_insn_uses_literal (int ) ;
 int aarch64_set_branch_offset (int ,unsigned long) ;
 unsigned long align_down (int *,int ) ;
 scalar_t__ branch_insn_requires_update (struct alt_instr*,unsigned long) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 get_alt_insn(struct alt_instr *alt, __le32 *insnptr, __le32 *altinsnptr)
{
 u32 insn;

 insn = le32_to_cpu(*altinsnptr);

 if (aarch64_insn_is_branch_imm(insn)) {
  s32 offset = aarch64_get_branch_offset(insn);
  unsigned long target;

  target = (unsigned long)altinsnptr + offset;






  if (branch_insn_requires_update(alt, target)) {
   offset = target - (unsigned long)insnptr;
   insn = aarch64_set_branch_offset(insn, offset);
  }
 } else if (aarch64_insn_is_adrp(insn)) {
  s32 orig_offset, new_offset;
  unsigned long target;






  orig_offset = aarch64_insn_adrp_get_offset(insn);
  target = align_down(altinsnptr, SZ_4K) + orig_offset;
  new_offset = target - align_down(insnptr, SZ_4K);
  insn = aarch64_insn_adrp_set_offset(insn, new_offset);
 } else if (aarch64_insn_uses_literal(insn)) {




  BUG();
 }

 return insn;
}
