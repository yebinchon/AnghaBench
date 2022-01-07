
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int* origin; int radius; int renderfx; int* shaderRGBA; int customShader; int reType; } ;
typedef TYPE_4__ refEntity_t ;
typedef int qhandle_t ;
typedef int ent ;
struct TYPE_10__ {scalar_t__ number; } ;
struct TYPE_14__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_15__ {int renderingThirdPerson; TYPE_3__* snap; } ;
struct TYPE_11__ {scalar_t__ clientNum; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;


 int RF_THIRD_PERSON ;
 int RT_SPRITE ;
 int VectorCopy (int ,int*) ;
 TYPE_8__ cg ;
 int memset (TYPE_4__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_4__*) ;

__attribute__((used)) static void CG_PlayerFloatSprite( centity_t *cent, qhandle_t shader ) {
 int rf;
 refEntity_t ent;

 if ( cent->currentState.number == cg.snap->ps.clientNum && !cg.renderingThirdPerson ) {
  rf = RF_THIRD_PERSON;
 } else {
  rf = 0;
 }

 memset( &ent, 0, sizeof( ent ) );
 VectorCopy( cent->lerpOrigin, ent.origin );
 ent.origin[2] += 48;
 ent.reType = RT_SPRITE;
 ent.customShader = shader;
 ent.radius = 10;
 ent.renderfx = rf;
 ent.shaderRGBA[0] = 255;
 ent.shaderRGBA[1] = 255;
 ent.shaderRGBA[2] = 255;
 ent.shaderRGBA[3] = 255;
 trap_R_AddRefEntityToScene( &ent );
}
