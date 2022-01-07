
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float phys_gravity; } ;


 TYPE_1__ aassettings ;
 float sqrt (int) ;

int AAS_FallDamageDistance(void)
{
 float maxzvelocity, gravity, t;

 maxzvelocity = sqrt(30 * 10000);
 gravity = aassettings.phys_gravity;
 t = maxzvelocity / gravity;
 return 0.5 * gravity * t * t;
}
