
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int EMIT2 (int,int ) ;
 int EMIT2_off32 (int,int ,scalar_t__ const) ;
 int EMIT3 (int,int ,int ) ;
 int EMIT3_off32 (int,int ,int ,scalar_t__ const) ;
 int const IA32_EAX ;
 int const IA32_EBP ;
 int STACK_VAR (int const) ;
 int add_1reg (int,int const) ;
 int add_2reg (int,int const,int const) ;

__attribute__((used)) static inline void emit_ia32_mov_i(const u8 dst, const u32 val, bool dstk,
       u8 **pprog)
{
 u8 *prog = *pprog;
 int cnt = 0;

 if (dstk) {
  if (val == 0) {

   EMIT2(0x33, add_2reg(0xC0, IA32_EAX, IA32_EAX));

   EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EAX),
         STACK_VAR(dst));
  } else {
   EMIT3_off32(0xC7, add_1reg(0x40, IA32_EBP),
        STACK_VAR(dst), val);
  }
 } else {
  if (val == 0)
   EMIT2(0x33, add_2reg(0xC0, dst, dst));
  else
   EMIT2_off32(0xC7, add_1reg(0xC0, dst),
        val);
 }
 *pprog = prog;
}
