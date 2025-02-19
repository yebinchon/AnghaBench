
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_regs {scalar_t__ pc; int sr; } ;
typedef int insn_size_t ;
typedef scalar_t__ __u64 ;
typedef void* __u32 ;
struct TYPE_9__ {TYPE_2__* xstate; } ;
struct TYPE_10__ {TYPE_3__ thread; } ;
struct TYPE_7__ {void** fp_regs; } ;
struct TYPE_8__ {TYPE_1__ hardfpu; } ;


 int SR_FD ;
 scalar_t__ __copy_user (scalar_t__*,void const*,int) ;
 int access_ok (unsigned long,unsigned long) ;
 TYPE_4__* current ;
 int die (char*,struct pt_regs*,int ) ;
 int disable_fpu () ;
 int enable_fpu () ;
 int generate_and_check_address (struct pt_regs*,int,int,int,scalar_t__*) ;
 TYPE_4__* last_task_used_math ;
 int printk (char*,int,unsigned long) ;
 int save_fpu (TYPE_4__*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int misaligned_fpu_load(struct pt_regs *regs,
      insn_size_t opcode,
      int displacement_not_indexed,
      int width_shift,
      int do_paired_load)
{

 int error;
 int destreg;
 __u64 address;

 error = generate_and_check_address(regs, opcode,
   displacement_not_indexed, width_shift, &address);
 if (error < 0)
  return error;

 destreg = (opcode >> 4) & 0x3f;
 if (user_mode(regs)) {
  __u64 buffer;
  __u32 buflo, bufhi;

  if (!access_ok((unsigned long) address, 1UL<<width_shift)) {
   return -1;
  }

  if (__copy_user(&buffer, (const void *)(int)address, (1 << width_shift)) > 0) {
   return -1;
  }



  if (last_task_used_math == current) {
   enable_fpu();
   save_fpu(current);
   disable_fpu();
   last_task_used_math = ((void*)0);
   regs->sr |= SR_FD;
  }

  buflo = *(__u32*) &buffer;
  bufhi = *(1 + (__u32*) &buffer);

  switch (width_shift) {
  case 2:
   current->thread.xstate->hardfpu.fp_regs[destreg] = buflo;
   break;
  case 3:
   if (do_paired_load) {
    current->thread.xstate->hardfpu.fp_regs[destreg] = buflo;
    current->thread.xstate->hardfpu.fp_regs[destreg+1] = bufhi;
   } else {




    current->thread.xstate->hardfpu.fp_regs[destreg] = buflo;
    current->thread.xstate->hardfpu.fp_regs[destreg+1] = bufhi;

   }
   break;
  default:
   printk("Unexpected width_shift %d in misaligned_fpu_load, PC=%08lx\n",
    width_shift, (unsigned long) regs->pc);
   break;
  }
  return 0;
 } else {
  die ("Misaligned FPU load inside kernel", regs, 0);
  return -1;
 }
}
