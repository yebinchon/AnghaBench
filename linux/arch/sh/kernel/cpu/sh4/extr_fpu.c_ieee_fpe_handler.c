
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* xstate; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {int pc; int pr; int sr; unsigned long* regs; } ;
struct TYPE_6__ {int fpscr; unsigned int* fp_regs; int fpul; } ;
struct TYPE_4__ {TYPE_3__ hardfpu; } ;


 int FPSCR_CAUSE_ERROR ;
 int FPSCR_DBL_PRECISION ;
 struct task_struct* current ;
 int denormal_to_double (TYPE_3__*,unsigned short) ;
 unsigned int float32_add (unsigned int,unsigned int) ;
 unsigned int float32_div (unsigned int,unsigned int) ;
 unsigned int float32_mul (unsigned int,unsigned int) ;
 unsigned int float32_sub (unsigned int,unsigned int) ;
 long long float64_add (long long,long long) ;
 long long float64_div (long long,long long) ;
 long long float64_mul (long long,long long) ;
 long long float64_sub (long long,long long) ;
 int float64_to_float32 (long long) ;
 unsigned long instruction_size (unsigned short) ;

__attribute__((used)) static int ieee_fpe_handler(struct pt_regs *regs)
{
 unsigned short insn = *(unsigned short *)regs->pc;
 unsigned short finsn;
 unsigned long nextpc;
 int nib[4] = {
  (insn >> 12) & 0xf,
  (insn >> 8) & 0xf,
  (insn >> 4) & 0xf,
  insn & 0xf
 };

 if (nib[0] == 0xb || (nib[0] == 0x4 && nib[2] == 0x0 && nib[3] == 0xb))
  regs->pr = regs->pc + 4;

 if (nib[0] == 0xa || nib[0] == 0xb) {

  nextpc = regs->pc + 4 + ((short)((insn & 0xfff) << 4) >> 3);
  finsn = *(unsigned short *)(regs->pc + 2);
 } else if (nib[0] == 0x8 && nib[1] == 0xd) {

  if (regs->sr & 1)
   nextpc = regs->pc + 4 + ((char)(insn & 0xff) << 1);
  else
   nextpc = regs->pc + 4;
  finsn = *(unsigned short *)(regs->pc + 2);
 } else if (nib[0] == 0x8 && nib[1] == 0xf) {

  if (regs->sr & 1)
   nextpc = regs->pc + 4;
  else
   nextpc = regs->pc + 4 + ((char)(insn & 0xff) << 1);
  finsn = *(unsigned short *)(regs->pc + 2);
 } else if (nib[0] == 0x4 && nib[3] == 0xb &&
     (nib[2] == 0x0 || nib[2] == 0x2)) {

  nextpc = regs->regs[nib[1]];
  finsn = *(unsigned short *)(regs->pc + 2);
 } else if (nib[0] == 0x0 && nib[3] == 0x3 &&
     (nib[2] == 0x0 || nib[2] == 0x2)) {

  nextpc = regs->pc + 4 + regs->regs[nib[1]];
  finsn = *(unsigned short *)(regs->pc + 2);
 } else if (insn == 0x000b) {

  nextpc = regs->pr;
  finsn = *(unsigned short *)(regs->pc + 2);
 } else {
  nextpc = regs->pc + instruction_size(insn);
  finsn = insn;
 }

 if ((finsn & 0xf1ff) == 0xf0ad) {

  struct task_struct *tsk = current;

  if ((tsk->thread.xstate->hardfpu.fpscr & FPSCR_CAUSE_ERROR))

   denormal_to_double(&tsk->thread.xstate->hardfpu,
        (finsn >> 8) & 0xf);
  else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf00f) == 0xf002) {

  struct task_struct *tsk = current;
  int fpscr;
  int n, m, prec;
  unsigned int hx, hy;

  n = (finsn >> 8) & 0xf;
  m = (finsn >> 4) & 0xf;
  hx = tsk->thread.xstate->hardfpu.fp_regs[n];
  hy = tsk->thread.xstate->hardfpu.fp_regs[m];
  fpscr = tsk->thread.xstate->hardfpu.fpscr;
  prec = fpscr & FPSCR_DBL_PRECISION;

  if ((fpscr & FPSCR_CAUSE_ERROR)
      && (prec && ((hx & 0x7fffffff) < 0x00100000
     || (hy & 0x7fffffff) < 0x00100000))) {
   long long llx, lly;


   llx = ((long long)hx << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[n + 1];
   lly = ((long long)hy << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[m + 1];
   llx = float64_mul(llx, lly);
   tsk->thread.xstate->hardfpu.fp_regs[n] = llx >> 32;
   tsk->thread.xstate->hardfpu.fp_regs[n + 1] = llx & 0xffffffff;
  } else if ((fpscr & FPSCR_CAUSE_ERROR)
      && (!prec && ((hx & 0x7fffffff) < 0x00800000
      || (hy & 0x7fffffff) < 0x00800000))) {

   hx = float32_mul(hx, hy);
   tsk->thread.xstate->hardfpu.fp_regs[n] = hx;
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf00e) == 0xf000) {

  struct task_struct *tsk = current;
  int fpscr;
  int n, m, prec;
  unsigned int hx, hy;

  n = (finsn >> 8) & 0xf;
  m = (finsn >> 4) & 0xf;
  hx = tsk->thread.xstate->hardfpu.fp_regs[n];
  hy = tsk->thread.xstate->hardfpu.fp_regs[m];
  fpscr = tsk->thread.xstate->hardfpu.fpscr;
  prec = fpscr & FPSCR_DBL_PRECISION;

  if ((fpscr & FPSCR_CAUSE_ERROR)
      && (prec && ((hx & 0x7fffffff) < 0x00100000
     || (hy & 0x7fffffff) < 0x00100000))) {
   long long llx, lly;


   llx = ((long long)hx << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[n + 1];
   lly = ((long long)hy << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[m + 1];
   if ((finsn & 0xf00f) == 0xf000)
    llx = float64_add(llx, lly);
   else
    llx = float64_sub(llx, lly);
   tsk->thread.xstate->hardfpu.fp_regs[n] = llx >> 32;
   tsk->thread.xstate->hardfpu.fp_regs[n + 1] = llx & 0xffffffff;
  } else if ((fpscr & FPSCR_CAUSE_ERROR)
      && (!prec && ((hx & 0x7fffffff) < 0x00800000
      || (hy & 0x7fffffff) < 0x00800000))) {

   if ((finsn & 0xf00f) == 0xf000)
    hx = float32_add(hx, hy);
   else
    hx = float32_sub(hx, hy);
   tsk->thread.xstate->hardfpu.fp_regs[n] = hx;
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf003) == 0xf003) {

  struct task_struct *tsk = current;
  int fpscr;
  int n, m, prec;
  unsigned int hx, hy;

  n = (finsn >> 8) & 0xf;
  m = (finsn >> 4) & 0xf;
  hx = tsk->thread.xstate->hardfpu.fp_regs[n];
  hy = tsk->thread.xstate->hardfpu.fp_regs[m];
  fpscr = tsk->thread.xstate->hardfpu.fpscr;
  prec = fpscr & FPSCR_DBL_PRECISION;

  if ((fpscr & FPSCR_CAUSE_ERROR)
      && (prec && ((hx & 0x7fffffff) < 0x00100000
     || (hy & 0x7fffffff) < 0x00100000))) {
   long long llx, lly;


   llx = ((long long)hx << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[n + 1];
   lly = ((long long)hy << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[m + 1];

   llx = float64_div(llx, lly);

   tsk->thread.xstate->hardfpu.fp_regs[n] = llx >> 32;
   tsk->thread.xstate->hardfpu.fp_regs[n + 1] = llx & 0xffffffff;
  } else if ((fpscr & FPSCR_CAUSE_ERROR)
      && (!prec && ((hx & 0x7fffffff) < 0x00800000
      || (hy & 0x7fffffff) < 0x00800000))) {

   hx = float32_div(hx, hy);
   tsk->thread.xstate->hardfpu.fp_regs[n] = hx;
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 } else if ((finsn & 0xf0bd) == 0xf0bd) {

  struct task_struct *tsk = current;
  int m;
  unsigned int hx;

  m = (finsn >> 8) & 0x7;
  hx = tsk->thread.xstate->hardfpu.fp_regs[m];

  if ((tsk->thread.xstate->hardfpu.fpscr & FPSCR_CAUSE_ERROR)
   && ((hx & 0x7fffffff) < 0x00100000)) {

   long long llx;

   llx = ((long long)tsk->thread.xstate->hardfpu.fp_regs[m] << 32)
       | tsk->thread.xstate->hardfpu.fp_regs[m + 1];

   tsk->thread.xstate->hardfpu.fpul = float64_to_float32(llx);
  } else
   return 0;

  regs->pc = nextpc;
  return 1;
 }

 return 0;
}
