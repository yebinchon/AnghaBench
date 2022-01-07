
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {float offset; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_12__ {int numVerts; int * verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_13__ {int * color; int xyz; int normal; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_14__ {int firstVert; int numVerts; } ;
typedef TYPE_4__ bspDrawSurface_t ;
struct TYPE_15__ {int maxs; int mins; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int Error (char*) ;
 int IncDrawVerts () ;
 int MAX_LIGHTMAPS ;
 int MAX_MAP_DRAW_VERTS ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 TYPE_3__* bspDrawVerts ;
 TYPE_7__* bspModels ;
 int * debugColors ;
 scalar_t__ debugSurfaces ;
 TYPE_2__* mapDrawSurfs ;
 int memcpy (TYPE_3__*,int *,int) ;
 int numBSPDrawVerts ;
 size_t numBSPModels ;

void EmitDrawVerts( mapDrawSurface_t *ds, bspDrawSurface_t *out ){
 int i, k;
 bspDrawVert_t *dv;
 shaderInfo_t *si;
 float offset;



 si = ds->shaderInfo;
 offset = si->offset;


 out->firstVert = numBSPDrawVerts;
 out->numVerts = ds->numVerts;
 for ( i = 0; i < ds->numVerts; i++ )
 {

  if ( numBSPDrawVerts == MAX_MAP_DRAW_VERTS ) {
   Error( "MAX_MAP_DRAW_VERTS" );
  }
  IncDrawVerts();
  dv = &bspDrawVerts[ numBSPDrawVerts - 1 ];


  memcpy( dv, &ds->verts[ i ], sizeof( *dv ) );


  if ( offset != 0.0f ) {
   VectorMA( dv->xyz, offset, dv->normal, dv->xyz );
  }




  if ( numBSPModels > 0 ) {
   AddPointToBounds( dv->xyz, bspModels[ numBSPModels ].mins, bspModels[ numBSPModels ].maxs );
  }


  if ( debugSurfaces ) {
   for ( k = 0; k < MAX_LIGHTMAPS; k++ )
    VectorCopy( debugColors[ ( ds - mapDrawSurfs ) % 12 ], dv->color[ k ] );
  }
 }
}
