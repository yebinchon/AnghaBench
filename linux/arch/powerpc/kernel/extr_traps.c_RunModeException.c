
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGTRAP ;
 int TRAP_UNK ;
 int _exception (int ,struct pt_regs*,int ,int ) ;

void RunModeException(struct pt_regs *regs)
{
 _exception(SIGTRAP, regs, TRAP_UNK, 0);
}
