
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;
 int EMIT2 (int,int ) ;
 int EMIT2_off32 (int,int ,int const) ;
 int EMIT3 (int,int ,int const) ;
 int const IA32_EAX ;
 int IA32_EBP ;
 int IA32_EDX ;
 int const STACK_VAR (int const) ;
 int add_1reg (int,int) ;
 int add_2reg (int,int,int const) ;
 scalar_t__ is_imm8 (int const) ;

__attribute__((used)) static inline void emit_ia32_alu_i(const bool is64, const bool hi, const u8 op,
       const u8 dst, const s32 val, bool dstk,
       u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 dreg = dstk ? IA32_EAX : dst;
 u8 sreg = IA32_EDX;

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(dst));

 if (!is_imm8(val))

  EMIT2_off32(0xC7, add_1reg(0xC0, IA32_EDX), val);

 switch (op) {

 case 133:
  if (hi && is64) {
   if (is_imm8(val))
    EMIT3(0x83, add_1reg(0xD0, dreg), val);
   else
    EMIT2(0x11, add_2reg(0xC0, dreg, sreg));
  } else {
   if (is_imm8(val))
    EMIT3(0x83, add_1reg(0xC0, dreg), val);
   else
    EMIT2(0x01, add_2reg(0xC0, dreg, sreg));
  }
  break;

 case 129:
  if (hi && is64) {
   if (is_imm8(val))
    EMIT3(0x83, add_1reg(0xD8, dreg), val);
   else
    EMIT2(0x19, add_2reg(0xC0, dreg, sreg));
  } else {
   if (is_imm8(val))
    EMIT3(0x83, add_1reg(0xE8, dreg), val);
   else
    EMIT2(0x29, add_2reg(0xC0, dreg, sreg));
  }
  break;

 case 130:
  if (is_imm8(val))
   EMIT3(0x83, add_1reg(0xC8, dreg), val);
  else
   EMIT2(0x09, add_2reg(0xC0, dreg, sreg));
  break;

 case 132:
  if (is_imm8(val))
   EMIT3(0x83, add_1reg(0xE0, dreg), val);
  else
   EMIT2(0x21, add_2reg(0xC0, dreg, sreg));
  break;

 case 128:
  if (is_imm8(val))
   EMIT3(0x83, add_1reg(0xF0, dreg), val);
  else
   EMIT2(0x31, add_2reg(0xC0, dreg, sreg));
  break;
 case 131:
  EMIT2(0xF7, add_1reg(0xD8, dreg));
  break;
 }

 if (dstk)

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg),
        STACK_VAR(dst));
 *pprog = prog;
}
