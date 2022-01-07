
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float phys_gravity; float phys_maxvelocity; double rs_maxjumpfallheight; } ;


 TYPE_1__ aassettings ;
 float sqrt (double) ;

float AAS_MaxJumpDistance(float phys_jumpvel)
{
 float phys_gravity, phys_maxvelocity, t;

 phys_gravity = aassettings.phys_gravity;
 phys_maxvelocity = aassettings.phys_maxvelocity;

 t = sqrt(aassettings.rs_maxjumpfallheight / (0.5 * phys_gravity));

 return phys_maxvelocity * (t + phys_jumpvel / phys_gravity);
}
