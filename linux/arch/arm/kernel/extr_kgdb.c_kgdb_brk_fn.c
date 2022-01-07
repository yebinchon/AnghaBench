
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGTRAP ;
 int kgdb_handle_exception (int,int ,int ,struct pt_regs*) ;

__attribute__((used)) static int kgdb_brk_fn(struct pt_regs *regs, unsigned int instr)
{
 kgdb_handle_exception(1, SIGTRAP, 0, regs);

 return 0;
}
