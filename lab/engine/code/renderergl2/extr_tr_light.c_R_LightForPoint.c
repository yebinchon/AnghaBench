
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int origin; } ;
struct TYPE_8__ {int lightDir; int directedLight; int ambientLight; TYPE_1__ e; } ;
typedef TYPE_2__ trRefEntity_t ;
typedef int ent ;
struct TYPE_10__ {int * lightGridData; } ;
struct TYPE_9__ {TYPE_5__* world; } ;


 int Com_Memset (TYPE_2__*,int ,int) ;
 int R_SetupEntityLightingGrid (TYPE_2__*,TYPE_5__*) ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_3__ tr ;

int R_LightForPoint( vec3_t point, vec3_t ambientLight, vec3_t directedLight, vec3_t lightDir )
{
 trRefEntity_t ent;

 if ( tr.world->lightGridData == ((void*)0) )
   return qfalse;

 Com_Memset(&ent, 0, sizeof(ent));
 VectorCopy( point, ent.e.origin );
 R_SetupEntityLightingGrid( &ent, tr.world );
 VectorCopy(ent.ambientLight, ambientLight);
 VectorCopy(ent.directedLight, directedLight);
 VectorCopy(ent.lightDir, lightDir);

 return qtrue;
}
