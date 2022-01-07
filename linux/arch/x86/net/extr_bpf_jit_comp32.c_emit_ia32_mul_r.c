
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int ) ;
 int const IA32_EAX ;
 int const IA32_EBP ;
 int const IA32_ECX ;
 int STACK_VAR (int const) ;
 int add_1reg (int,int ) ;
 int add_2reg (int,int const,int const) ;

__attribute__((used)) static inline void emit_ia32_mul_r(const u8 dst, const u8 src, bool dstk,
       bool sstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 sreg = sstk ? IA32_ECX : src;

 if (sstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_ECX), STACK_VAR(src));

 if (dstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(dst));
 else

  EMIT2(0x8B, add_2reg(0xC0, dst, IA32_EAX));


 EMIT2(0xF7, add_1reg(0xE0, sreg));

 if (dstk)

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst));
 else

  EMIT2(0x89, add_2reg(0xC0, dst, IA32_EAX));

 *pprog = prog;
}
