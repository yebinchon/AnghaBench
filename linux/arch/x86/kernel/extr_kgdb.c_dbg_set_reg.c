
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int offset; int size; } ;


 int GDB_FS ;
 int GDB_GS ;
 int GDB_ORIG_AX ;
 int GDB_SP ;
 int GDB_SS ;
 TYPE_1__* dbg_reg_def ;
 int memcpy (void*,void*,int ) ;

int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
{
 if (



     regno == GDB_SP || regno == GDB_ORIG_AX)
  return 0;

 if (dbg_reg_def[regno].offset != -1)
  memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
         dbg_reg_def[regno].size);
 return 0;
}
