
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_14__ {int rdflags; int num_dlights; TYPE_4__* dlights; } ;
typedef TYPE_2__ trRefdef_t ;
struct TYPE_13__ {int renderfx; int* lightingOrigin; int* origin; int * axis; } ;
struct TYPE_15__ {int* ambientLight; int* directedLight; int* lightDir; TYPE_1__ e; void** modelLightDir; int ambientLightInt; scalar_t__ lightingCalculated; } ;
typedef TYPE_3__ trRefEntity_t ;
struct TYPE_16__ {float radius; int* color; int origin; } ;
typedef TYPE_4__ dlight_t ;
typedef int byte ;
struct TYPE_20__ {scalar_t__ lightGridData; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {int (* ftol ) (float) ;} ;
struct TYPE_17__ {int identityLight; int* sunDirection; TYPE_9__* world; } ;


 float DLIGHT_AT_RADIUS ;
 float DLIGHT_MINIMUM_RADIUS ;
 void* DotProduct (int*,int ) ;
 int LogLight (TYPE_3__*) ;
 float MAX (float,float) ;
 int RDF_NOWORLDMODEL ;
 int RF_LIGHTING_ORIGIN ;
 int R_SetupEntityLightingGrid (TYPE_3__*,TYPE_9__*) ;
 int VectorCopy (int*,int*) ;
 float VectorLength (int*) ;
 int VectorMA (int*,float,int*,int*) ;
 float VectorNormalize (int*) ;
 int VectorScale (int*,float,int*) ;
 int VectorSubtract (int ,int*,int*) ;
 scalar_t__ qtrue ;
 TYPE_7__* r_debugLight ;
 TYPE_6__ ri ;
 int stub1 (float) ;
 int stub2 (float) ;
 int stub3 (float) ;
 TYPE_5__ tr ;

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
  R_SetupEntityLightingGrid( ent, tr.world );
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




 {
  float r, g, b, max;

  r = ent->ambientLight[0];
  g = ent->ambientLight[1];
  b = ent->ambientLight[2];

  max = MAX(MAX(r, g), b);

  if (max > 255.0f)
  {
   max = 255.0f / max;
   ent->ambientLight[0] *= max;
   ent->ambientLight[1] *= max;
   ent->ambientLight[2] *= max;
  }

  r = ent->directedLight[0];
  g = ent->directedLight[1];
  b = ent->directedLight[2];

  max = MAX(MAX(r, g), b);

  if (max > 255.0f)
  {
   max = 255.0f / max;
   ent->directedLight[0] *= max;
   ent->directedLight[1] *= max;
   ent->directedLight[2] *= max;
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
 ent->modelLightDir[0] = DotProduct( lightDir, ent->e.axis[0] );
 ent->modelLightDir[1] = DotProduct( lightDir, ent->e.axis[1] );
 ent->modelLightDir[2] = DotProduct( lightDir, ent->e.axis[2] );

 VectorCopy(lightDir, ent->lightDir);
}
