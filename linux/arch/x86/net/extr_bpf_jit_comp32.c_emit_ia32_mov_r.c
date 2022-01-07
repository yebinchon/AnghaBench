
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 int EMIT2 (int,int ) ;
 int EMIT3 (int,int ,int ) ;
 int const IA32_EAX ;
 int const IA32_EBP ;
 int STACK_VAR (int const) ;
 int add_2reg (int,int const,int const) ;

__attribute__((used)) static inline void emit_ia32_mov_r(const u8 dst, const u8 src, bool dstk,
       bool sstk, u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 sreg = sstk ? IA32_EAX : src;

 if (sstk)

  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(src));
 if (dstk)

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, sreg), STACK_VAR(dst));
 else

  EMIT2(0x89, add_2reg(0xC0, dst, sreg));

 *pprog = prog;
}
