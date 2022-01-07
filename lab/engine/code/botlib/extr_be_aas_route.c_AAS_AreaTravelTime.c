
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 scalar_t__ AAS_AreaCrouch (int) ;
 scalar_t__ AAS_AreaSwim (int) ;
 float DISTANCEFACTOR_CROUCH ;
 float DISTANCEFACTOR_SWIM ;
 float DISTANCEFACTOR_WALK ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;

unsigned short int AAS_AreaTravelTime(int areanum, vec3_t start, vec3_t end)
{
 int intdist;
 float dist;
 vec3_t dir;

 VectorSubtract(start, end, dir);
 dist = VectorLength(dir);

 if (AAS_AreaCrouch(areanum)) dist *= DISTANCEFACTOR_CROUCH;

 else if (AAS_AreaSwim(areanum)) dist *= DISTANCEFACTOR_SWIM;

 else dist *= DISTANCEFACTOR_WALK;

 intdist = (int) dist;

 if (intdist <= 0) intdist = 1;
 return intdist;
}
