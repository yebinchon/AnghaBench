
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float phys_gravity; } ;


 TYPE_1__ aassettings ;
 int fabs (float) ;
 float sqrt (int) ;

float AAS_FallDelta(float distance)
{
 float t, delta, gravity;

 gravity = aassettings.phys_gravity;
 t = sqrt(fabs(distance) * 2 / gravity);
 delta = t * gravity;
 return delta * delta * 0.0001;
}
