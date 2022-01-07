
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {int cp0_status; } ;
struct TYPE_9__ {int offset; int size; } ;
struct TYPE_6__ {int * fpr; int fcr31; } ;
struct TYPE_7__ {TYPE_1__ fpu; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;


 int DBG_MAX_REG_NUM ;
 int EINVAL ;
 int ST0_CU1 ;
 TYPE_3__* current ;
 TYPE_4__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;
 int restore_fp (TYPE_3__*) ;

int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
{
 int fp_reg;

 if (regno < 0 || regno >= DBG_MAX_REG_NUM)
  return -EINVAL;

 if (dbg_reg_def[regno].offset != -1 && regno < 38) {
  memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
         dbg_reg_def[regno].size);
 } else if (current && dbg_reg_def[regno].offset != -1 && regno < 72) {

  if (!(regs->cp0_status & ST0_CU1))
   return 0;
  if (regno == 70) {

   memcpy((void *)&current->thread.fpu.fcr31, mem,
          dbg_reg_def[regno].size);
   goto out_save;
  } else if (regno == 71) {

   goto out_save;
  }
  fp_reg = dbg_reg_def[regno].offset;
  memcpy((void *)&current->thread.fpu.fpr[fp_reg], mem,
         dbg_reg_def[regno].size);
out_save:
  restore_fp(current);
 }

 return 0;
}
