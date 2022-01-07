
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int s64 ;
typedef enum aarch64_reloc_op { ____Placeholder_aarch64_reloc_op } aarch64_reloc_op ;
typedef enum aarch64_insn_movw_imm_type { ____Placeholder_aarch64_insn_movw_imm_type } aarch64_insn_movw_imm_type ;
typedef int __le32 ;


 int AARCH64_INSN_IMM_16 ;
 int AARCH64_INSN_IMM_MOVNZ ;
 int ERANGE ;
 int U16_MAX ;
 int aarch64_insn_encode_immediate (int ,int,int) ;
 int cpu_to_le32 (int) ;
 int do_reloc (int,int *,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int reloc_insn_movw(enum aarch64_reloc_op op, __le32 *place, u64 val,
      int lsb, enum aarch64_insn_movw_imm_type imm_type)
{
 u64 imm;
 s64 sval;
 u32 insn = le32_to_cpu(*place);

 sval = do_reloc(op, place, val);
 imm = sval >> lsb;

 if (imm_type == AARCH64_INSN_IMM_MOVNZ) {





  insn &= ~(3 << 29);
  if (sval >= 0) {

   insn |= 2 << 29;
  } else {






   imm = ~imm;
  }
 }


 insn = aarch64_insn_encode_immediate(AARCH64_INSN_IMM_16, insn, imm);
 *place = cpu_to_le32(insn);

 if (imm > U16_MAX)
  return -ERANGE;

 return 0;
}
