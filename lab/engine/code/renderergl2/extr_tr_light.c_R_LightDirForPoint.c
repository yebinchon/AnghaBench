
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * lightGridData; } ;
typedef TYPE_2__ world_t ;
typedef int vec3_t ;
struct TYPE_8__ {int origin; } ;
struct TYPE_10__ {int lightDir; TYPE_1__ e; } ;
typedef TYPE_3__ trRefEntity_t ;
typedef int ent ;


 int Com_Memset (TYPE_3__*,int ,int) ;
 float DotProduct (int ,int ) ;
 int R_SetupEntityLightingGrid (TYPE_3__*,TYPE_2__*) ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;

int R_LightDirForPoint( vec3_t point, vec3_t lightDir, vec3_t normal, world_t *world )
{
 trRefEntity_t ent;

 if ( world->lightGridData == ((void*)0) )
   return qfalse;

 Com_Memset(&ent, 0, sizeof(ent));
 VectorCopy( point, ent.e.origin );
 R_SetupEntityLightingGrid( &ent, world );

 if (DotProduct(ent.lightDir, normal) > 0.2f)
  VectorCopy(ent.lightDir, lightDir);
 else
  VectorCopy(normal, lightDir);

 return qtrue;
}
