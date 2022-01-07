
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_11__ {int surfaceFlags; int contentFlags; } ;
typedef TYPE_1__ bspShader_t ;
struct TYPE_12__ {scalar_t__ dist; int normal; } ;
typedef TYPE_2__ bspPlane_t ;
struct TYPE_13__ {size_t firstBSPLeafBrush; int numBSPLeafBrushes; } ;
typedef TYPE_3__ bspLeaf_t ;
struct TYPE_14__ {int numSides; int firstSide; int shaderNum; } ;
typedef TYPE_4__ bspBrush_t ;
struct TYPE_15__ {size_t planeNum; size_t shaderNum; } ;
typedef TYPE_5__ bspBrushSide_t ;


 float DotProduct (int ,int ) ;
 TYPE_5__* bspBrushSides ;
 TYPE_4__* bspBrushes ;
 int* bspLeafBrushes ;
 TYPE_3__* bspLeafs ;
 TYPE_2__* bspPlanes ;
 TYPE_1__* bspShaders ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int ShaderForPointInLeaf( vec3_t point, int leafNum, float epsilon, int wantContentFlags, int wantSurfaceFlags, int *contentFlags, int *surfaceFlags ){
 int i, j;
 float dot;
 qboolean inside;
 int *brushes, numBSPBrushes;
 bspLeaf_t *leaf;
 bspBrush_t *brush;
 bspBrushSide_t *side;
 bspPlane_t *plane;
 bspShader_t *shader;
 int allSurfaceFlags, allContentFlags;



 *surfaceFlags = 0;
 *contentFlags = 0;


 if ( leafNum < 0 ) {
  return -1;
 }
 leaf = &bspLeafs[ leafNum ];


 brushes = &bspLeafBrushes[ leaf->firstBSPLeafBrush ];
 numBSPBrushes = leaf->numBSPLeafBrushes;
 for ( i = 0; i < numBSPBrushes; i++ )
 {

  brush = &bspBrushes[ brushes[ i ] ];


  inside = qtrue;
  allSurfaceFlags = 0;
  allContentFlags = 0;
  for ( j = 0; j < brush->numSides && inside; j++ )
  {
   side = &bspBrushSides[ brush->firstSide + j ];
   plane = &bspPlanes[ side->planeNum ];
   dot = DotProduct( point, plane->normal );
   dot -= plane->dist;
   if ( dot > epsilon ) {
    inside = qfalse;
   }
   else
   {
    shader = &bspShaders[ side->shaderNum ];
    allSurfaceFlags |= shader->surfaceFlags;
    allContentFlags |= shader->contentFlags;
   }
  }


  if ( inside ) {

   if ( wantContentFlags && !( wantContentFlags & allContentFlags ) ) {
    continue;
   }
   if ( wantSurfaceFlags && !( wantSurfaceFlags & allSurfaceFlags ) ) {
    continue;
   }


   *surfaceFlags = allSurfaceFlags;
   *contentFlags = allContentFlags;
   return brush->shaderNum;
  }
 }


 return -1;
}
