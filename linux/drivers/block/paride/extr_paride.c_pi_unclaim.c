
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pardevice {int dummy; } ;
struct TYPE_3__ {scalar_t__ pardev; scalar_t__ claimed; } ;
typedef TYPE_1__ PIA ;


 int parport_release (struct pardevice*) ;

__attribute__((used)) static void pi_unclaim(PIA * pi)
{
 pi->claimed = 0;
 if (pi->pardev)
  parport_release((struct pardevice *) (pi->pardev));
}
