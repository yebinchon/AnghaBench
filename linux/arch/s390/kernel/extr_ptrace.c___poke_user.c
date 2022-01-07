
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fprs; int fpc; } ;
struct TYPE_7__ {int mask; } ;
struct TYPE_11__ {int per_info; TYPE_2__ fp_regs; int orig_gpr2; int * acrs; TYPE_1__ psw; } ;
struct user {TYPE_5__ regs; } ;
struct TYPE_9__ {scalar_t__ fprs; scalar_t__ vxrs; scalar_t__ fpc; } ;
struct TYPE_10__ {unsigned int* acrs; TYPE_3__ fpu; } ;
struct task_struct {TYPE_4__ thread; } ;
typedef scalar_t__ addr_t ;
struct TYPE_12__ {scalar_t__ orig_gpr2; int psw; } ;


 int BITS_PER_LONG ;
 int EINVAL ;
 scalar_t__ MACHINE_HAS_VX ;
 scalar_t__ PSW_ASC_HOME ;
 scalar_t__ PSW_MASK_ASC ;
 scalar_t__ PSW_MASK_BA ;
 scalar_t__ PSW_MASK_EA ;
 unsigned long PSW_MASK_RI ;
 unsigned long PSW_MASK_USER ;
 scalar_t__ PSW_USER_BITS ;
 int __poke_user_per (struct task_struct*,scalar_t__,scalar_t__) ;
 scalar_t__ is_ri_task (struct task_struct*) ;
 TYPE_6__* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_fp_ctl (scalar_t__) ;

__attribute__((used)) static int __poke_user(struct task_struct *child, addr_t addr, addr_t data)
{
 struct user *dummy = ((void*)0);
 addr_t offset;

 if (addr < (addr_t) &dummy->regs.acrs) {



  if (addr == (addr_t) &dummy->regs.psw.mask) {
   unsigned long mask = PSW_MASK_USER;

   mask |= is_ri_task(child) ? PSW_MASK_RI : 0;
   if ((data ^ PSW_USER_BITS) & ~mask)

    return -EINVAL;
   if ((data & PSW_MASK_ASC) == PSW_ASC_HOME)

    return -EINVAL;
   if ((data & PSW_MASK_EA) && !(data & PSW_MASK_BA))

    return -EINVAL;
  }
  *(addr_t *)((addr_t) &task_pt_regs(child)->psw + addr) = data;

 } else if (addr < (addr_t) (&dummy->regs.orig_gpr2)) {



  offset = addr - (addr_t) &dummy->regs.acrs;






  if (addr == (addr_t) &dummy->regs.acrs[15])
   child->thread.acrs[15] = (unsigned int) (data >> 32);
  else
   *(addr_t *)((addr_t) &child->thread.acrs + offset) = data;

 } else if (addr == (addr_t) &dummy->regs.orig_gpr2) {



  task_pt_regs(child)->orig_gpr2 = data;

 } else if (addr < (addr_t) &dummy->regs.fp_regs) {




  return 0;

 } else if (addr == (addr_t) &dummy->regs.fp_regs.fpc) {



  if ((unsigned int) data != 0 ||
      test_fp_ctl(data >> (BITS_PER_LONG - 32)))
   return -EINVAL;
  child->thread.fpu.fpc = data >> (BITS_PER_LONG - 32);

 } else if (addr < (addr_t) (&dummy->regs.fp_regs + 1)) {




  offset = addr - (addr_t) &dummy->regs.fp_regs.fprs;
  if (MACHINE_HAS_VX)
   *(addr_t *)((addr_t)
    child->thread.fpu.vxrs + 2*offset) = data;
  else
   *(addr_t *)((addr_t)
    child->thread.fpu.fprs + offset) = data;

 } else if (addr < (addr_t) (&dummy->regs.per_info + 1)) {



  addr -= (addr_t) &dummy->regs.per_info;
  __poke_user_per(child, addr, data);

 }

 return 0;
}
