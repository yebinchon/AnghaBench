
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pardevice {int dummy; } ;
struct TYPE_3__ {int * pardev; } ;
typedef TYPE_1__ PIA ;


 int parport_unregister_device (struct pardevice*) ;

__attribute__((used)) static void pi_unregister_parport(PIA * pi)
{
 if (pi->pardev) {
  parport_unregister_device((struct pardevice *) (pi->pardev));
  pi->pardev = ((void*)0);
 }
}
