
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;




 int BPF_OP (int const) ;



 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int ) ;
 int const IA32_EAX ;
 int const IA32_EBP ;
 int const IA32_EDX ;
 int STACK_VAR (int const) ;
 int add_2reg (int,int const,int const) ;

__attribute__((used)) static inline void emit_ia32_alu_r(const bool is64, const bool hi, const u8 op,
       const u8 dst, const u8 src, bool dstk,
       bool sstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 sreg = sstk ? IA32_EAX : src;
 u8 dreg = dstk ? IA32_EDX : dst;

 if (sstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(src));

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EDX), STACK_VAR(dst));

 switch (BPF_OP(op)) {

 case 132:
  if (hi && is64)
   EMIT2(0x11, add_2reg(0xC0, dreg, sreg));
  else
   EMIT2(0x01, add_2reg(0xC0, dreg, sreg));
  break;

 case 129:
  if (hi && is64)
   EMIT2(0x19, add_2reg(0xC0, dreg, sreg));
  else
   EMIT2(0x29, add_2reg(0xC0, dreg, sreg));
  break;

 case 130:
  EMIT2(0x09, add_2reg(0xC0, dreg, sreg));
  break;

 case 131:
  EMIT2(0x21, add_2reg(0xC0, dreg, sreg));
  break;

 case 128:
  EMIT2(0x31, add_2reg(0xC0, dreg, sreg));
  break;
 }

 if (dstk)

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg),
        STACK_VAR(dst));
 *pprog = prog;
}
