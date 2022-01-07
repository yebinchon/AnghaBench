
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;





 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int ) ;
 scalar_t__ const IA32_EAX ;
 scalar_t__ const IA32_EBP ;
 scalar_t__ const IA32_ECX ;
 int STACK_VAR (scalar_t__ const) ;
 int add_1reg (scalar_t__,scalar_t__) ;
 int add_2reg (int,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline void emit_ia32_shift_r(const u8 op, const u8 dst, const u8 src,
         bool dstk, bool sstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 dreg = dstk ? IA32_EAX : dst;
 u8 b2;

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(dst));

 if (sstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_ECX), STACK_VAR(src));
 else if (src != IA32_ECX)

  EMIT2(0x8B, add_2reg(0xC0, src, IA32_ECX));

 switch (op) {
 case 129:
  b2 = 0xE0; break;
 case 128:
  b2 = 0xE8; break;
 case 130:
  b2 = 0xF8; break;
 default:
  return;
 }
 EMIT2(0xD3, add_1reg(b2, dreg));

 if (dstk)

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg), STACK_VAR(dst));
 *pprog = prog;
}
