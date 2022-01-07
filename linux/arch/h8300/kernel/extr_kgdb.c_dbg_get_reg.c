
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {char* name; int size; int offset; } ;


 int DBG_MAX_REG_NUM ;


 TYPE_1__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,int ) ;

char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (regno >= DBG_MAX_REG_NUM || regno < 0)
  return ((void*)0);

 switch (regno) {
 case 129:



  *(u32 *)mem = *(u16 *)((void *)regs +
           dbg_reg_def[regno].offset);
  break;
 default:
  if (dbg_reg_def[regno].offset >= 0)
   memcpy(mem, (void *)regs + dbg_reg_def[regno].offset,
          dbg_reg_def[regno].size);
  else
   memset(mem, 0, dbg_reg_def[regno].size);
  break;
 }
 return dbg_reg_def[regno].name;
}
