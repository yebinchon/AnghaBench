
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct plt_entry {int br; } ;


 int AARCH64_INSN_BRANCH_NOLINK ;
 int AARCH64_INSN_REG_16 ;
 struct plt_entry __get_adrp_add_pair (int ,int ,int ) ;
 scalar_t__ aarch64_insn_gen_branch_reg (int ,int ) ;
 int cpu_to_le32 (scalar_t__) ;

struct plt_entry get_plt_entry(u64 dst, void *pc)
{
 struct plt_entry plt;
 static u32 br;

 if (!br)
  br = aarch64_insn_gen_branch_reg(AARCH64_INSN_REG_16,
       AARCH64_INSN_BRANCH_NOLINK);

 plt = __get_adrp_add_pair(dst, (u64)pc, AARCH64_INSN_REG_16);
 plt.br = cpu_to_le32(br);

 return plt;
}
