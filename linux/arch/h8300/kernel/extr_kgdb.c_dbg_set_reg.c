
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int size; int offset; } ;


 int DBG_MAX_REG_NUM ;
 int EINVAL ;


 TYPE_1__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;

int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (regno >= DBG_MAX_REG_NUM || regno < 0)
  return -EINVAL;

 switch (regno) {
 case 129:



  *(u16 *)((void *)regs +
    dbg_reg_def[regno].offset) = *(u32 *)mem;
  break;
 default:
  memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
         dbg_reg_def[regno].size);
 }
 return 0;
}
