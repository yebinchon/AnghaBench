
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_halt () ;
 int local_irq_disable () ;
 int rbtx4938_sfvol_addr ;
 int rbtx4938_softreset_addr ;
 int rbtx4938_softresetlock_addr ;
 int stub1 () ;
 int writeb (int,int ) ;

__attribute__((used)) static void rbtx4938_machine_restart(char *command)
{
 local_irq_disable();
 writeb(1, rbtx4938_softresetlock_addr);
 writeb(1, rbtx4938_sfvol_addr);
 writeb(1, rbtx4938_softreset_addr);

 (*_machine_halt)();
}
