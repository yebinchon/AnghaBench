
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_7__ {int numVerts; TYPE_2__* shaderInfo; int * lightmapVecs; int entityNum; TYPE_1__* verts; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_6__ {int lightStyle; int flareShader; int color; } ;
struct TYPE_5__ {int * xyz; } ;


 int DrawSurfaceForFlare (int ,int *,int ,int ,int ,int ) ;
 int VectorAdd (int *,int *,int *) ;
 int VectorClear (int *) ;
 int VectorMA (int *,float,int ,int *) ;
 int VectorScale (int *,float,int *) ;

__attribute__((used)) static void AddSurfaceFlare( mapDrawSurface_t *ds, vec3_t entityOrigin ){
 vec3_t origin;
 int i;



 VectorClear( origin );
 for ( i = 0; i < ds->numVerts; i++ )
  VectorAdd( origin, ds->verts[ i ].xyz, origin );
 VectorScale( origin, ( 1.0f / ds->numVerts ), origin );
 if ( entityOrigin != ((void*)0) ) {
  VectorAdd( origin, entityOrigin, origin );
 }


 VectorMA( origin, 2.0f, ds->lightmapVecs[ 2 ], origin );


 DrawSurfaceForFlare( ds->entityNum, origin, ds->lightmapVecs[ 2 ], ds->shaderInfo->color, ds->shaderInfo->flareShader, ds->shaderInfo->lightStyle );
}
