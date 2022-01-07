
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int ) ;
 int IA32_EAX ;
 int IA32_EBP ;
 int IA32_ECX ;
 int IA32_EDX ;
 int STACK_VAR (int ) ;
 int add_1reg (int,int ) ;
 int add_2reg (int,int ,int ) ;
 int dst_hi ;
 int dst_lo ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_ia32_mul_r64(const u8 dst[], const u8 src[], bool dstk,
         bool sstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_hi));
 else

  EMIT2(0x8B, add_2reg(0xC0, dst_hi, IA32_EAX));

 if (sstk)

  EMIT3(0xF7, add_1reg(0x60, IA32_EBP), STACK_VAR(src_lo));
 else

  EMIT2(0xF7, add_1reg(0xE0, src_lo));


 EMIT2(0x89, add_2reg(0xC0, IA32_ECX, IA32_EAX));

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_lo));
 else

  EMIT2(0x8B, add_2reg(0xC0, dst_lo, IA32_EAX));

 if (sstk)

  EMIT3(0xF7, add_1reg(0x60, IA32_EBP), STACK_VAR(src_hi));
 else

  EMIT2(0xF7, add_1reg(0xE0, src_hi));


 EMIT2(0x01, add_2reg(0xC0, IA32_ECX, IA32_EAX));

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_lo));
 else

  EMIT2(0x8B, add_2reg(0xC0, dst_lo, IA32_EAX));

 if (sstk)

  EMIT3(0xF7, add_1reg(0x60, IA32_EBP), STACK_VAR(src_lo));
 else

  EMIT2(0xF7, add_1reg(0xE0, src_lo));


 EMIT2(0x01, add_2reg(0xC0, IA32_ECX, IA32_EDX));

 if (dstk) {

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_lo));

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_ECX),
        STACK_VAR(dst_hi));
 } else {

  EMIT2(0x89, add_2reg(0xC0, dst_lo, IA32_EAX));

  EMIT2(0x89, add_2reg(0xC0, dst_hi, IA32_ECX));
 }

 *pprog = prog;
}
