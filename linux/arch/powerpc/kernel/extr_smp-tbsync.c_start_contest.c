
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int cmd; int handshake; scalar_t__ race_result; scalar_t__ ack; scalar_t__ mark; scalar_t__ tb; } ;


 int barrier () ;
 int enter_contest (scalar_t__,int) ;
 scalar_t__ get_tb () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 TYPE_1__* tbsync ;
 int wmb () ;

__attribute__((used)) static int start_contest(int cmd, long offset, int num)
{
 int i, score=0;
 u64 tb;
 u64 mark;

 tbsync->cmd = cmd;

 local_irq_disable();
 for (i = -3; i < num; ) {
  tb = get_tb() + 400;
  tbsync->tb = tb + offset;
  tbsync->mark = mark = tb + 400;

  wmb();

  tbsync->handshake = 1;
  while (tbsync->ack)
   barrier();

  while (get_tb() <= tb)
   barrier();
  tbsync->handshake = 0;
  enter_contest(mark, 1);

  while (!tbsync->ack)
   barrier();

  if (i++ > 0)
   score += tbsync->race_result;
 }
 local_irq_enable();
 return score;
}
