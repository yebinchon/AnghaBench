
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EMIT1 (int) ;
 int EMIT3 (int,int ,int ) ;
 int IA32_EBP ;
 int IA32_ECX ;
 int STACK_VAR (int ) ;
 int add_2reg (int,int ,int ) ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_push_r64(const u8 src[], u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;


 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_ECX), STACK_VAR(src_hi));

 EMIT1(0x51);


 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_ECX), STACK_VAR(src_lo));

 EMIT1(0x51);

 *pprog = prog;
}
