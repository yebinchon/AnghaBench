
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {float dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_15__ {scalar_t__ entityNum; scalar_t__* maxs; scalar_t__* mins; int numVerts; TYPE_10__* verts; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_16__ {TYPE_6__* colorModBrushes; } ;
typedef TYPE_5__ entity_t ;
struct TYPE_17__ {scalar_t__ entityNum; scalar_t__* mins; scalar_t__* maxs; int numsides; TYPE_2__* contentShader; TYPE_1__* sides; struct TYPE_17__* nextColorModBrush; } ;
typedef TYPE_6__ brush_t ;
struct TYPE_13__ {int colorMod; } ;
struct TYPE_12__ {size_t planenum; } ;
struct TYPE_11__ {int xyz; } ;


 int ColorMod (int ,int,TYPE_10__*) ;
 float DotProduct (int ,int ) ;
 TYPE_3__* mapplanes ;

__attribute__((used)) static void VolumeColorMods( entity_t *e, mapDrawSurface_t *ds ){
 int i, j;
 float d;
 brush_t *b;
 plane_t *plane;



 if ( e->colorModBrushes == ((void*)0) ) {
  return;
 }


 for ( b = e->colorModBrushes; b != ((void*)0); b = b->nextColorModBrush )
 {

  if ( b->entityNum != 0 && b->entityNum != ds->entityNum ) {
   continue;
  }


  if ( b->mins[ 0 ] > ds->maxs[ 0 ] || b->maxs[ 0 ] < ds->mins[ 0 ] ||
    b->mins[ 1 ] > ds->maxs[ 1 ] || b->maxs[ 1 ] < ds->mins[ 1 ] ||
    b->mins[ 2 ] > ds->maxs[ 2 ] || b->maxs[ 2 ] < ds->mins[ 2 ] ) {
   continue;
  }


  for ( i = 0; i < ds->numVerts; i++ )
  {

   for ( j = 0; j < b->numsides; j++ )
   {

    plane = &mapplanes[ b->sides[ j ].planenum ];
    d = DotProduct( ds->verts[ i ].xyz, plane->normal ) - plane->dist;
    if ( d > 1.0f ) {
     break;
    }
   }


   if ( j == b->numsides ) {
    ColorMod( b->contentShader->colorMod, 1, &ds->verts[ i ] );
   }
  }
 }
}
