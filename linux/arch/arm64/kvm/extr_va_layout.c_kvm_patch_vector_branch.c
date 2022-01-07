
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct alt_instr {int dummy; } ;
typedef int __le32 ;


 int AARCH64_INSN_BRANCH_NOLINK ;
 int AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX ;
 int AARCH64_INSN_MOVEWIDE_KEEP ;
 int AARCH64_INSN_MOVEWIDE_ZERO ;
 int AARCH64_INSN_REG_0 ;
 int AARCH64_INSN_REG_1 ;
 int AARCH64_INSN_REG_SP ;
 int AARCH64_INSN_VARIANT_64BIT ;
 int ARM64_HARDEN_EL2_VECTORS ;
 int BUG_ON (int) ;
 int GENMASK_ULL (int,int) ;
 scalar_t__ KVM_VECTOR_PREAMBLE ;
 int WARN_ON_ONCE (int ) ;
 int __kvm_hyp_vector ;
 int aarch64_insn_gen_branch_reg (int ,int ) ;
 int aarch64_insn_gen_load_store_pair (int ,int ,int ,int,int ,int ) ;
 int aarch64_insn_gen_movewide (int ,int ,int,int ,int ) ;
 int compute_layout () ;
 void* cpu_to_le32 (int ) ;
 int cpus_have_const_cap (int ) ;
 scalar_t__ has_vhe () ;
 scalar_t__ kvm_ksym_ref (int ) ;
 int tag_lsb ;
 int tag_val ;
 int va_mask ;

void kvm_patch_vector_branch(struct alt_instr *alt,
        __le32 *origptr, __le32 *updptr, int nr_inst)
{
 u64 addr;
 u32 insn;

 BUG_ON(nr_inst != 5);

 if (has_vhe() || !cpus_have_const_cap(ARM64_HARDEN_EL2_VECTORS)) {
  WARN_ON_ONCE(cpus_have_const_cap(ARM64_HARDEN_EL2_VECTORS));
  return;
 }

 if (!va_mask)
  compute_layout();




 addr = (uintptr_t)kvm_ksym_ref(__kvm_hyp_vector);
 addr &= va_mask;
 addr |= tag_val << tag_lsb;


 addr |= ((u64)origptr & GENMASK_ULL(10, 7));





 addr += KVM_VECTOR_PREAMBLE;


 insn = aarch64_insn_gen_load_store_pair(AARCH64_INSN_REG_0,
      AARCH64_INSN_REG_1,
      AARCH64_INSN_REG_SP,
      -16,
      AARCH64_INSN_VARIANT_64BIT,
      AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX);
 *updptr++ = cpu_to_le32(insn);


 insn = aarch64_insn_gen_movewide(AARCH64_INSN_REG_0,
      (u16)addr,
      0,
      AARCH64_INSN_VARIANT_64BIT,
      AARCH64_INSN_MOVEWIDE_ZERO);
 *updptr++ = cpu_to_le32(insn);


 insn = aarch64_insn_gen_movewide(AARCH64_INSN_REG_0,
      (u16)(addr >> 16),
      16,
      AARCH64_INSN_VARIANT_64BIT,
      AARCH64_INSN_MOVEWIDE_KEEP);
 *updptr++ = cpu_to_le32(insn);


 insn = aarch64_insn_gen_movewide(AARCH64_INSN_REG_0,
      (u16)(addr >> 32),
      32,
      AARCH64_INSN_VARIANT_64BIT,
      AARCH64_INSN_MOVEWIDE_KEEP);
 *updptr++ = cpu_to_le32(insn);


 insn = aarch64_insn_gen_branch_reg(AARCH64_INSN_REG_0,
        AARCH64_INSN_BRANCH_NOLINK);
 *updptr++ = cpu_to_le32(insn);
}
