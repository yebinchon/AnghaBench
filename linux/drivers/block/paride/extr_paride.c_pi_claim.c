
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pardevice {int dummy; } ;
struct TYPE_3__ {int claimed; scalar_t__ pardev; int parq; } ;
typedef TYPE_1__ PIA ;


 int parport_claim (struct pardevice*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void pi_claim(PIA * pi)
{
 if (pi->claimed)
  return;
 pi->claimed = 1;
 if (pi->pardev)
  wait_event(pi->parq,
      !parport_claim((struct pardevice *) pi->pardev));
}
