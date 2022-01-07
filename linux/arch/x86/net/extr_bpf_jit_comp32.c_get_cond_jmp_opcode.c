
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int COND_JMP_OPCODE_INVALID ;
 int IA32_JA ;
 int IA32_JAE ;
 int IA32_JB ;
 int IA32_JBE ;
 int IA32_JE ;
 int IA32_JG ;
 int IA32_JGE ;
 int IA32_JL ;
 int IA32_JLE ;
 int IA32_JNE ;

__attribute__((used)) static u8 get_cond_jmp_opcode(const u8 op, bool is_cmp_lo)
{
 u8 jmp_cond;


 switch (op) {
 case 138:
  jmp_cond = IA32_JE;
  break;
 case 132:
 case 133:
  jmp_cond = IA32_JNE;
  break;
 case 136:

  jmp_cond = IA32_JA;
  break;
 case 134:

  jmp_cond = IA32_JB;
  break;
 case 137:

  jmp_cond = IA32_JAE;
  break;
 case 135:

  jmp_cond = IA32_JBE;
  break;
 case 130:
  if (!is_cmp_lo)

   jmp_cond = IA32_JG;
  else

   jmp_cond = IA32_JA;
  break;
 case 128:
  if (!is_cmp_lo)

   jmp_cond = IA32_JL;
  else

   jmp_cond = IA32_JB;
  break;
 case 131:
  if (!is_cmp_lo)

   jmp_cond = IA32_JGE;
  else

   jmp_cond = IA32_JAE;
  break;
 case 129:
  if (!is_cmp_lo)

   jmp_cond = IA32_JLE;
  else

   jmp_cond = IA32_JBE;
  break;
 default:
  jmp_cond = COND_JMP_OPCODE_INVALID;
  break;
 }

 return jmp_cond;
}
