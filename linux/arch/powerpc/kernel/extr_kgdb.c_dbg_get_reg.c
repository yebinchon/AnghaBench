
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {void* evr; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
struct TYPE_5__ {int offset; char* name; int size; } ;


 int DBG_MAX_REG_NUM ;
 TYPE_3__* current ;
 TYPE_2__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,int ) ;

char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (regno >= DBG_MAX_REG_NUM || regno < 0)
  return ((void*)0);

 if (regno < 32 || regno >= 64)


  memcpy(mem, (void *)regs + dbg_reg_def[regno].offset,
    dbg_reg_def[regno].size);

 if (regno >= 32 && regno < 64) {







  memset(mem, 0, dbg_reg_def[regno].size);

 }

 return dbg_reg_def[regno].name;
}
