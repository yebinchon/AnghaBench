
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* drawSurfReferences; scalar_t__ opaque; TYPE_5__* brushlist; int maxs; int mins; int area; int cluster; } ;
typedef TYPE_2__ node_t ;
struct TYPE_11__ {int outputNum; struct TYPE_11__* nextRef; } ;
typedef TYPE_3__ drawSurfRef_t ;
struct TYPE_12__ {size_t firstBSPLeafBrush; size_t numBSPLeafBrushes; size_t firstBSPLeafSurface; size_t numBSPLeafSurfaces; int maxs; int mins; int area; int cluster; } ;
typedef TYPE_4__ bspLeaf_t ;
struct TYPE_13__ {TYPE_1__* original; struct TYPE_13__* next; } ;
typedef TYPE_5__ brush_t ;
struct TYPE_9__ {int outputNum; } ;


 int Error (char*) ;
 size_t MAX_MAP_LEAFBRUSHES ;
 size_t MAX_MAP_LEAFFACES ;
 size_t MAX_MAP_LEAFS ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,TYPE_5__*) ;
 int VectorCopy (int ,int ) ;
 int * bspLeafBrushes ;
 int * bspLeafSurfaces ;
 TYPE_4__* bspLeafs ;
 size_t numBSPLeafBrushes ;
 size_t numBSPLeafSurfaces ;
 size_t numBSPLeafs ;

void EmitLeaf( node_t *node ){
 bspLeaf_t *leaf_p;
 brush_t *b;
 drawSurfRef_t *dsr;



 if ( numBSPLeafs >= MAX_MAP_LEAFS ) {
  Error( "MAX_MAP_LEAFS" );
 }

 leaf_p = &bspLeafs[numBSPLeafs];
 numBSPLeafs++;

 leaf_p->cluster = node->cluster;
 leaf_p->area = node->area;


 VectorCopy( node->mins, leaf_p->mins );
 VectorCopy( node->maxs, leaf_p->maxs );


 leaf_p->firstBSPLeafBrush = numBSPLeafBrushes;
 for ( b = node->brushlist; b; b = b->next )
 {

  if ( (size_t) b < 256 ) {
   Sys_FPrintf( SYS_WRN, "WARNING: Node brush list corrupted (0x%08X)\n", b );
   break;
  }



  if ( numBSPLeafBrushes >= MAX_MAP_LEAFBRUSHES ) {
   Error( "MAX_MAP_LEAFBRUSHES" );
  }
  bspLeafBrushes[ numBSPLeafBrushes ] = b->original->outputNum;
  numBSPLeafBrushes++;
 }

 leaf_p->numBSPLeafBrushes = numBSPLeafBrushes - leaf_p->firstBSPLeafBrush;


 if ( node->opaque ) {
  return;
 }


 leaf_p->firstBSPLeafSurface = numBSPLeafSurfaces;
 for ( dsr = node->drawSurfReferences; dsr; dsr = dsr->nextRef )
 {
  if ( numBSPLeafSurfaces >= MAX_MAP_LEAFFACES ) {
   Error( "MAX_MAP_LEAFFACES" );
  }
  bspLeafSurfaces[ numBSPLeafSurfaces ] = dsr->outputNum;
  numBSPLeafSurfaces++;
 }

 leaf_p->numBSPLeafSurfaces = numBSPLeafSurfaces - leaf_p->firstBSPLeafSurface;
}
