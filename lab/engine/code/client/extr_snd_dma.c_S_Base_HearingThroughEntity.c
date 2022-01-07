
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vec3_t ;
typedef int qboolean ;
struct TYPE_2__ {scalar_t__ origin; } ;


 float DistanceSquared (scalar_t__,int ) ;
 float THIRD_PERSON_THRESHOLD_SQ ;
 int VectorCopy (scalar_t__,scalar_t__) ;
 int listener_number ;
 int listener_origin ;
 TYPE_1__* loopSounds ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean S_Base_HearingThroughEntity( int entityNum, vec3_t origin )
{
 float distanceSq;
 vec3_t sorigin;

 if (origin)
  VectorCopy(origin, sorigin);
 else
  VectorCopy(loopSounds[entityNum].origin, sorigin);

 if( listener_number == entityNum )
 {






  distanceSq = DistanceSquared(
    sorigin,
    listener_origin );

  if( distanceSq > THIRD_PERSON_THRESHOLD_SQ )
   return qfalse;
  else
   return qtrue;
 }
 else
  return qfalse;
}
