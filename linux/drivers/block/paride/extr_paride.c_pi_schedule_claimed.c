
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* claim_cont ) () ;int claimed; scalar_t__ pardev; } ;
typedef TYPE_1__ PIA ;


 scalar_t__ parport_claim (scalar_t__) ;
 int pi_spinlock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pi_schedule_claimed(PIA * pi, void (*cont) (void))
{
 unsigned long flags;

 spin_lock_irqsave(&pi_spinlock, flags);
 if (pi->pardev && parport_claim(pi->pardev)) {
  pi->claim_cont = cont;
  spin_unlock_irqrestore(&pi_spinlock, flags);
  return 0;
 }
 pi->claimed = 1;
 spin_unlock_irqrestore(&pi_spinlock, flags);
 return 1;
}
