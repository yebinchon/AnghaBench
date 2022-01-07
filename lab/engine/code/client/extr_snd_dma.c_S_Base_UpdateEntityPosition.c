
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int origin; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int MAX_GENTITIES ;
 int VectorCopy (int const,int ) ;
 TYPE_1__* loopSounds ;

void S_Base_UpdateEntityPosition( int entityNum, const vec3_t origin ) {
 if ( entityNum < 0 || entityNum >= MAX_GENTITIES ) {
  Com_Error( ERR_DROP, "S_UpdateEntityPosition: bad entitynum %i", entityNum );
 }
 VectorCopy( origin, loopSounds[entityNum].origin );
}
