
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef void* qhandle_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {int rotation; float shaderTime; int oldorigin; int origin; void* customShader; void* hModel; int * axis; } ;
struct TYPE_7__ {int startTime; int endTime; double* color; TYPE_1__ refEntity; int leType; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_8__ {int time; } ;


 int AxisClear (int *) ;
 TYPE_2__* CG_AllocLocalEntity () ;
 int CG_Error (char*,int) ;
 int LE_EXPLOSION ;
 int LE_SPRITE_EXPLOSION ;
 int RotateAroundDirection (int *,float) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,int,int ) ;
 TYPE_3__ cg ;
 int rand () ;

localEntity_t *CG_MakeExplosion( vec3_t origin, vec3_t dir,
        qhandle_t hModel, qhandle_t shader,
        int msec, qboolean isSprite ) {
 float ang;
 localEntity_t *ex;
 int offset;
 vec3_t tmpVec, newOrigin;

 if ( msec <= 0 ) {
  CG_Error( "CG_MakeExplosion: msec = %i", msec );
 }


 offset = rand() & 63;

 ex = CG_AllocLocalEntity();
 if ( isSprite ) {
  ex->leType = LE_SPRITE_EXPLOSION;


  ex->refEntity.rotation = rand() % 360;
  VectorScale( dir, 16, tmpVec );
  VectorAdd( tmpVec, origin, newOrigin );
 } else {
  ex->leType = LE_EXPLOSION;
  VectorCopy( origin, newOrigin );


  if ( !dir ) {
   AxisClear( ex->refEntity.axis );
  } else {
   ang = rand() % 360;
   VectorCopy( dir, ex->refEntity.axis[0] );
   RotateAroundDirection( ex->refEntity.axis, ang );
  }
 }

 ex->startTime = cg.time - offset;
 ex->endTime = ex->startTime + msec;


 ex->refEntity.shaderTime = ex->startTime / 1000.0f;

 ex->refEntity.hModel = hModel;
 ex->refEntity.customShader = shader;


 VectorCopy( newOrigin, ex->refEntity.origin );
 VectorCopy( newOrigin, ex->refEntity.oldorigin );

 ex->color[0] = ex->color[1] = ex->color[2] = 1.0;

 return ex;
}
