
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int) ;
 int IA32_EAX ;
 int IA32_EBP ;
 int IA32_EDX ;
 int STACK_VAR (int ) ;
 int add_1reg (int,int ) ;
 int add_2reg (int,int ,int ) ;
 int dst_hi ;
 int dst_lo ;

__attribute__((used)) static inline void emit_ia32_neg64(const u8 dst[], bool dstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 dreg_lo = dstk ? IA32_EAX : dst_lo;
 u8 dreg_hi = dstk ? IA32_EDX : dst_hi;

 if (dstk) {
  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_lo));
  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EDX),
        STACK_VAR(dst_hi));
 }


 EMIT2(0xF7, add_1reg(0xD8, dreg_lo));

 EMIT3(0x83, add_1reg(0xD0, dreg_hi), 0x00);

 EMIT2(0xF7, add_1reg(0xD8, dreg_hi));

 if (dstk) {

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg_lo),
        STACK_VAR(dst_lo));

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg_hi),
        STACK_VAR(dst_hi));
 }
 *pprog = prog;
}
