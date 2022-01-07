
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int offset; char* name; } ;


 int DBG_MAX_REG_NUM ;
 TYPE_1__* dbg_reg_def ;

char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (regno >= DBG_MAX_REG_NUM || regno < 0)
  return ((void*)0);

 *((unsigned long *) mem) = *((unsigned long *) ((void *)regs +
  dbg_reg_def[regno].offset));

 return dbg_reg_def[regno].name;
}
