
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bpf_prog_aux {int verifier_zext; } ;
typedef int s32 ;


 int EMIT1 (int) ;
 int EMIT2 (int,int) ;
 int EMIT3 (int,int,int ) ;
 int IA32_EAX ;
 int IA32_EBP ;
 int IA32_EDX ;
 int STACK_VAR (int ) ;
 int add_2reg (int,int ,int ) ;
 int dst_hi ;
 int dst_lo ;

__attribute__((used)) static inline void emit_ia32_to_le_r64(const u8 dst[], s32 val,
      bool dstk, u8 **pprog,
      const struct bpf_prog_aux *aux)
{
 u8 *prog = *pprog;
 int cnt = 0;
 u8 dreg_lo = dstk ? IA32_EAX : dst_lo;
 u8 dreg_hi = dstk ? IA32_EDX : dst_hi;

 if (dstk && val != 64) {
  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX),
        STACK_VAR(dst_lo));
  EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EDX),
        STACK_VAR(dst_hi));
 }
 switch (val) {
 case 16:




  EMIT2(0x0F, 0xB7);
  EMIT1(add_2reg(0xC0, dreg_lo, dreg_lo));
  if (!aux->verifier_zext)

   EMIT2(0x33, add_2reg(0xC0, dreg_hi, dreg_hi));
  break;
 case 32:
  if (!aux->verifier_zext)

   EMIT2(0x33, add_2reg(0xC0, dreg_hi, dreg_hi));
  break;
 case 64:

  break;
 }

 if (dstk && val != 64) {

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg_lo),
        STACK_VAR(dst_lo));

  EMIT3(0x89, add_2reg(0x40, IA32_EBP, dreg_hi),
        STACK_VAR(dst_hi));
 }
 *pprog = prog;
}
