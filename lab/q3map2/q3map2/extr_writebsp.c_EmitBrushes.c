
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {size_t firstSide; scalar_t__ numSides; void* shaderNum; } ;
typedef TYPE_4__ bspBrush_t ;
struct TYPE_14__ {void* shaderNum; int planeNum; } ;
typedef TYPE_5__ bspBrushSide_t ;
struct TYPE_15__ {size_t outputNum; int numsides; TYPE_3__* sides; TYPE_1__* contentShader; struct TYPE_15__* next; } ;
typedef TYPE_6__ brush_t ;
struct TYPE_12__ {int outputNum; TYPE_2__* shaderInfo; int planenum; } ;
struct TYPE_11__ {int surfaceFlags; int contentFlags; int * shader; } ;
struct TYPE_10__ {int surfaceFlags; int contentFlags; int * shader; } ;


 void* EmitShader (int *,int *,int *) ;
 int Error (char*,...) ;
 size_t MAX_MAP_BRUSHES ;
 size_t MAX_MAP_BRUSHSIDES ;
 TYPE_5__* bspBrushSides ;
 TYPE_4__* bspBrushes ;
 size_t numBSPBrushSides ;
 size_t numBSPBrushes ;

void EmitBrushes( brush_t *brushes, int *firstBrush, int *numBrushes ){
 int j;
 brush_t *b;
 bspBrush_t *db;
 bspBrushSide_t *cp;



 if ( firstBrush != ((void*)0) ) {
  *firstBrush = numBSPBrushes;
 }
 if ( numBrushes != ((void*)0) ) {
  *numBrushes = 0;
 }


 for ( b = brushes; b != ((void*)0); b = b->next )
 {

  if ( numBSPBrushes == MAX_MAP_BRUSHES ) {
   Error( "MAX_MAP_BRUSHES (%d)", numBSPBrushes );
  }


  b->outputNum = numBSPBrushes;
  db = &bspBrushes[ numBSPBrushes ];
  numBSPBrushes++;
  if ( numBrushes != ((void*)0) ) {
   ( *numBrushes )++;
  }

  db->shaderNum = EmitShader( b->contentShader->shader, &b->contentShader->contentFlags, &b->contentShader->surfaceFlags );
  db->firstSide = numBSPBrushSides;


  db->numSides = 0;
  for ( j = 0; j < b->numsides; j++ )
  {

   b->sides[ j ].outputNum = -1;


   if ( numBSPBrushSides == MAX_MAP_BRUSHSIDES ) {
    Error( "MAX_MAP_BRUSHSIDES " );
   }


   b->sides[ j ].outputNum = numBSPBrushSides;
   cp = &bspBrushSides[ numBSPBrushSides ];
   db->numSides++;
   numBSPBrushSides++;
   cp->planeNum = b->sides[ j ].planenum;


   if ( b->sides[ j ].shaderInfo ) {
    cp->shaderNum = EmitShader( b->sides[ j ].shaderInfo->shader, &b->sides[ j ].shaderInfo->contentFlags, &b->sides[ j ].shaderInfo->surfaceFlags );
   }
   else{
    cp->shaderNum = EmitShader( ((void*)0), ((void*)0), ((void*)0) );
   }
  }
 }
}
