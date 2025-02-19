
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {float* currentOrigin; } ;
struct TYPE_7__ {TYPE_1__ r; struct TYPE_7__* nextTrain; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_8__ {TYPE_2__* locationHead; } ;


 int VectorCopy (float*,float*) ;
 TYPE_3__ level ;
 int trap_InPVS (float*,float*) ;

gentity_t *Team_GetLocation(gentity_t *ent)
{
 gentity_t *eloc, *best;
 float bestlen, len;
 vec3_t origin;

 best = ((void*)0);
 bestlen = 3*8192.0*8192.0;

 VectorCopy( ent->r.currentOrigin, origin );

 for (eloc = level.locationHead; eloc; eloc = eloc->nextTrain) {
  len = ( origin[0] - eloc->r.currentOrigin[0] ) * ( origin[0] - eloc->r.currentOrigin[0] )
   + ( origin[1] - eloc->r.currentOrigin[1] ) * ( origin[1] - eloc->r.currentOrigin[1] )
   + ( origin[2] - eloc->r.currentOrigin[2] ) * ( origin[2] - eloc->r.currentOrigin[2] );

  if ( len > bestlen ) {
   continue;
  }

  if ( !trap_InPVS( origin, eloc->r.currentOrigin ) ) {
   continue;
  }

  bestlen = len;
  best = eloc;
 }

 return best;
}
