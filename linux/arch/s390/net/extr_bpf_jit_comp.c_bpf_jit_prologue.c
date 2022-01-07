
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_jit {int seen; int prg; int base_ip; int tail_call_start; } ;


 int BPF_REG_FP ;
 int EMIT2 (int,int ,int ) ;
 int EMIT4 (int,int ,int ) ;
 int EMIT4_DISP (int,int ,int ,int ) ;
 int EMIT4_IMM (int,int ,int ) ;
 int EMIT4_PCREL (int,int) ;
 int EMIT6_DISP_LH (int,int,int ,int ,int ,int) ;
 int REGS_SAVE ;
 int REG_0 ;
 int REG_15 ;
 int REG_L ;
 int REG_W1 ;
 int SEEN_FUNC ;
 int SEEN_LITERAL ;
 int SEEN_STACK ;
 int SEEN_TAIL_CALL ;
 int STK_160_UNUSED ;
 int STK_OFF ;
 int STK_OFF_TCCNT ;
 int _EMIT2 (int ) ;
 int _EMIT6 (int,int) ;
 int save_restore_regs (struct bpf_jit*,int ,int ) ;

__attribute__((used)) static void bpf_jit_prologue(struct bpf_jit *jit, u32 stack_depth)
{
 if (jit->seen & SEEN_TAIL_CALL) {

  _EMIT6(0xd703f000 | STK_OFF_TCCNT, 0xf000 | STK_OFF_TCCNT);
 } else {

  EMIT4_PCREL(0xa7f40000, 6);
  _EMIT2(0);
 }

 jit->tail_call_start = jit->prg;

 save_restore_regs(jit, REGS_SAVE, stack_depth);

 if (jit->seen & SEEN_LITERAL) {

  EMIT2(0x0d00, REG_L, REG_0);
  jit->base_ip = jit->prg;
 }

 if (jit->seen & SEEN_STACK) {
  if (jit->seen & SEEN_FUNC)

   EMIT4(0xb9040000, REG_W1, REG_15);

  EMIT4_DISP(0x41000000, BPF_REG_FP, REG_15, STK_160_UNUSED);

  EMIT4_IMM(0xa70b0000, REG_15, -(STK_OFF + stack_depth));
  if (jit->seen & SEEN_FUNC)

   EMIT6_DISP_LH(0xe3000000, 0x0024, REG_W1, REG_0,
          REG_15, 152);
 }
}
