
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int* origin; int radius; scalar_t__ renderfx; int customShader; int reType; } ;
typedef TYPE_1__ refEntity_t ;
typedef int qhandle_t ;
typedef int playerInfo_t ;
typedef int ent ;


 int RT_SPRITE ;
 int VectorCopy (int ,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

__attribute__((used)) static void UI_PlayerFloatSprite( playerInfo_t *pi, vec3_t origin, qhandle_t shader ) {
 refEntity_t ent;

 memset( &ent, 0, sizeof( ent ) );
 VectorCopy( origin, ent.origin );
 ent.origin[2] += 48;
 ent.reType = RT_SPRITE;
 ent.customShader = shader;
 ent.radius = 10;
 ent.renderfx = 0;
 trap_R_AddRefEntityToScene( &ent );
}
