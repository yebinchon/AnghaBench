
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 scalar_t__ pi_schedule_claimed (int *,void (*) ()) ;

void pi_do_claimed(PIA * pi, void (*cont) (void))
{
 if (pi_schedule_claimed(pi, cont))
  cont();
}
