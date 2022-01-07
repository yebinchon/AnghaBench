
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
struct TYPE_9__ {scalar_t__ fpc; scalar_t__ fprs; scalar_t__ vxrs; } ;
struct TYPE_10__ {TYPE_3__ fpu; scalar_t__* acrs; } ;
struct task_struct {TYPE_4__ thread; } ;
typedef scalar_t__ addr_t ;
struct TYPE_12__ {scalar_t__ orig_gpr2; int psw; } ;


 int BITS_PER_LONG ;
 scalar_t__ MACHINE_HAS_VX ;
 scalar_t__ PSW_MASK_RI ;
 scalar_t__ PSW_MASK_USER ;
 scalar_t__ PSW_USER_BITS ;
 scalar_t__ __peek_user_per (struct task_struct*,scalar_t__) ;
 TYPE_6__* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static unsigned long __peek_user(struct task_struct *child, addr_t addr)
{
 struct user *dummy = ((void*)0);
 addr_t offset, tmp;

 if (addr < (addr_t) &dummy->regs.acrs) {



  tmp = *(addr_t *)((addr_t) &task_pt_regs(child)->psw + addr);
  if (addr == (addr_t) &dummy->regs.psw.mask) {

   tmp &= PSW_MASK_USER | PSW_MASK_RI;
   tmp |= PSW_USER_BITS;
  }

 } else if (addr < (addr_t) &dummy->regs.orig_gpr2) {



  offset = addr - (addr_t) &dummy->regs.acrs;





  if (addr == (addr_t) &dummy->regs.acrs[15])
   tmp = ((unsigned long) child->thread.acrs[15]) << 32;
  else
   tmp = *(addr_t *)((addr_t) &child->thread.acrs + offset);

 } else if (addr == (addr_t) &dummy->regs.orig_gpr2) {



  tmp = (addr_t) task_pt_regs(child)->orig_gpr2;

 } else if (addr < (addr_t) &dummy->regs.fp_regs) {




  tmp = 0;

 } else if (addr == (addr_t) &dummy->regs.fp_regs.fpc) {



  tmp = child->thread.fpu.fpc;
  tmp <<= BITS_PER_LONG - 32;

 } else if (addr < (addr_t) (&dummy->regs.fp_regs + 1)) {




  offset = addr - (addr_t) &dummy->regs.fp_regs.fprs;
  if (MACHINE_HAS_VX)
   tmp = *(addr_t *)
          ((addr_t) child->thread.fpu.vxrs + 2*offset);
  else
   tmp = *(addr_t *)
          ((addr_t) child->thread.fpu.fprs + offset);

 } else if (addr < (addr_t) (&dummy->regs.per_info + 1)) {



  addr -= (addr_t) &dummy->regs.per_info;
  tmp = __peek_user_per(child, addr);

 } else
  tmp = 0;

 return tmp;
}
