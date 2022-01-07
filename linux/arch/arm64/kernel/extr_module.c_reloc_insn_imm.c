
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int s64 ;
typedef enum aarch64_reloc_op { ____Placeholder_aarch64_reloc_op } aarch64_reloc_op ;
typedef enum aarch64_insn_imm_type { ____Placeholder_aarch64_insn_imm_type } aarch64_insn_imm_type ;
typedef int __le32 ;


 int BIT (int) ;
 int ERANGE ;
 int aarch64_insn_encode_immediate (int,int ,int) ;
 int cpu_to_le32 (int ) ;
 int do_reloc (int,int *,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int reloc_insn_imm(enum aarch64_reloc_op op, __le32 *place, u64 val,
     int lsb, int len, enum aarch64_insn_imm_type imm_type)
{
 u64 imm, imm_mask;
 s64 sval;
 u32 insn = le32_to_cpu(*place);


 sval = do_reloc(op, place, val);
 sval >>= lsb;


 imm_mask = (BIT(lsb + len) - 1) >> lsb;
 imm = sval & imm_mask;


 insn = aarch64_insn_encode_immediate(imm_type, insn, imm);
 *place = cpu_to_le32(insn);





 sval = (s64)(sval & ~(imm_mask >> 1)) >> (len - 1);





 if ((u64)(sval + 1) >= 2)
  return -ERANGE;

 return 0;
}
