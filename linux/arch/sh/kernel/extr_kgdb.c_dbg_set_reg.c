
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int offset; int size; } ;


 int DBG_MAX_REG_NUM ;
 int EINVAL ;
 TYPE_1__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;

int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (regno < 0 || regno >= DBG_MAX_REG_NUM)
  return -EINVAL;

 if (dbg_reg_def[regno].offset != -1)
  memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
         dbg_reg_def[regno].size);

 return 0;
}
