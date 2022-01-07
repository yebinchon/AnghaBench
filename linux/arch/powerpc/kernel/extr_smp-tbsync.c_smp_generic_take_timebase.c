
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int ack; int cmd; int tb; int mark; scalar_t__ handshake; } ;


 int barrier () ;
 int enter_contest (int ,int) ;
 int kExit ;
 int kSetAndTest ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int rmb () ;
 int running ;
 int set_tb (int,int) ;
 TYPE_1__* tbsync ;

void smp_generic_take_timebase(void)
{
 int cmd;
 u64 tb;
 unsigned long flags;

 local_irq_save(flags);
 while (!running)
  barrier();
 rmb();

 for (;;) {
  tbsync->ack = 1;
  while (!tbsync->handshake)
   barrier();
  rmb();

  cmd = tbsync->cmd;
  tb = tbsync->tb;
  mb();
  tbsync->ack = 0;
  if (cmd == kExit)
   break;

  while (tbsync->handshake)
   barrier();
  if (cmd == kSetAndTest)
   set_tb(tb >> 32, tb & 0xfffffffful);
  enter_contest(tbsync->mark, -1);
 }
 local_irq_restore(flags);
}
