
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_15__ {int rdflags; int num_dlights; TYPE_5__* dlights; } ;
typedef TYPE_3__ trRefdef_t ;
struct TYPE_14__ {int renderfx; int * axis; int origin; int lightingOrigin; } ;
struct TYPE_16__ {int* ambientLight; int* directedLight; int* lightDir; TYPE_2__ e; int ambientLightInt; scalar_t__ lightingCalculated; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_17__ {float radius; int* color; int origin; } ;
typedef TYPE_5__ dlight_t ;
typedef int byte ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {int (* ftol ) (scalar_t__) ;} ;
struct TYPE_18__ {int identityLight; scalar_t__ identityLightByte; int sunDirection; TYPE_1__* world; } ;
struct TYPE_13__ {scalar_t__ lightGridData; } ;


 float DLIGHT_AT_RADIUS ;
 float DLIGHT_MINIMUM_RADIUS ;
 void* DotProduct (int*,int ) ;
 int LogLight (TYPE_4__*) ;
 int RDF_NOWORLDMODEL ;
 int RF_LIGHTING_ORIGIN ;
 int R_SetupEntityLightingGrid (TYPE_4__*) ;
 int VectorCopy (int ,int*) ;
 float VectorLength (int*) ;
 int VectorMA (int*,float,int*,int*) ;
 float VectorNormalize (int*) ;
 int VectorScale (int*,float,int*) ;
 int VectorSubtract (int ,int*,int*) ;
 scalar_t__ qtrue ;
 TYPE_8__* r_debugLight ;
 TYPE_7__ ri ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 TYPE_6__ tr ;

void R_SetupEntityLighting( const trRefdef_t *refdef, trRefEntity_t *ent ) {
 int i;
 dlight_t *dl;
 float power;
 vec3_t dir;
 float d;
 vec3_t lightDir;
 vec3_t lightOrigin;


 if ( ent->lightingCalculated ) {
  return;
 }
 ent->lightingCalculated = qtrue;




 if ( ent->e.renderfx & RF_LIGHTING_ORIGIN ) {



  VectorCopy( ent->e.lightingOrigin, lightOrigin );
 } else {
  VectorCopy( ent->e.origin, lightOrigin );
 }


 if ( !(refdef->rdflags & RDF_NOWORLDMODEL )
  && tr.world->lightGridData ) {
  R_SetupEntityLightingGrid( ent );
 } else {
  ent->ambientLight[0] = ent->ambientLight[1] =
   ent->ambientLight[2] = tr.identityLight * 150;
  ent->directedLight[0] = ent->directedLight[1] =
   ent->directedLight[2] = tr.identityLight * 150;
  VectorCopy( tr.sunDirection, ent->lightDir );
 }


 if ( 1 ) {

  ent->ambientLight[0] += tr.identityLight * 32;
  ent->ambientLight[1] += tr.identityLight * 32;
  ent->ambientLight[2] += tr.identityLight * 32;
 }




 d = VectorLength( ent->directedLight );
 VectorScale( ent->lightDir, d, lightDir );

 for ( i = 0 ; i < refdef->num_dlights ; i++ ) {
  dl = &refdef->dlights[i];
  VectorSubtract( dl->origin, lightOrigin, dir );
  d = VectorNormalize( dir );

  power = DLIGHT_AT_RADIUS * ( dl->radius * dl->radius );
  if ( d < DLIGHT_MINIMUM_RADIUS ) {
   d = DLIGHT_MINIMUM_RADIUS;
  }
  d = power / ( d * d );

  VectorMA( ent->directedLight, d, dl->color, ent->directedLight );
  VectorMA( lightDir, d, dir, lightDir );
 }


 for ( i = 0 ; i < 3 ; i++ ) {
  if ( ent->ambientLight[i] > tr.identityLightByte ) {
   ent->ambientLight[i] = tr.identityLightByte;
  }
 }

 if ( r_debugLight->integer ) {
  LogLight( ent );
 }


 ((byte *)&ent->ambientLightInt)[0] = ri.ftol(ent->ambientLight[0]);
 ((byte *)&ent->ambientLightInt)[1] = ri.ftol(ent->ambientLight[1]);
 ((byte *)&ent->ambientLightInt)[2] = ri.ftol(ent->ambientLight[2]);
 ((byte *)&ent->ambientLightInt)[3] = 0xff;


 VectorNormalize( lightDir );
 ent->lightDir[0] = DotProduct( lightDir, ent->e.axis[0] );
 ent->lightDir[1] = DotProduct( lightDir, ent->e.axis[1] );
 ent->lightDir[2] = DotProduct( lightDir, ent->e.axis[2] );
}
