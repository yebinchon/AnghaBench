
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* claim_cont ) () ;int claimed; int parq; int pardev; } ;
typedef TYPE_1__ PIA ;


 int parport_claim (int ) ;
 int pi_spinlock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void pi_wake_up(void *p)
{
 PIA *pi = (PIA *) p;
 unsigned long flags;
 void (*cont) (void) = ((void*)0);

 spin_lock_irqsave(&pi_spinlock, flags);

 if (pi->claim_cont && !parport_claim(pi->pardev)) {
  cont = pi->claim_cont;
  pi->claim_cont = ((void*)0);
  pi->claimed = 1;
 }

 spin_unlock_irqrestore(&pi_spinlock, flags);

 wake_up(&(pi->parq));

 if (cont)
  cont();
}
