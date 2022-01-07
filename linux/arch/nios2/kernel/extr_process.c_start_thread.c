
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int estatus; unsigned long ea; unsigned long sp; } ;


 int ESTATUS_EPIE ;
 int ESTATUS_EU ;
 int memset (void*,int ,int) ;

void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp)
{
 memset((void *) regs, 0, sizeof(struct pt_regs));
 regs->estatus = ESTATUS_EPIE | ESTATUS_EU;
 regs->ea = pc;
 regs->sp = sp;
}
