
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int compileFlags; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef scalar_t__ qboolean ;
struct TYPE_11__ {int shader; } ;
typedef TYPE_2__ bspShader_t ;
struct TYPE_12__ {int numSides; int firstSide; } ;
typedef TYPE_3__ bspBrush_t ;
struct TYPE_13__ {size_t shaderNum; } ;
typedef TYPE_4__ bspBrushSide_t ;
struct TYPE_14__ {int numBSPBrushes; int firstBSPBrush; } ;


 int C_TRANSLUCENT ;
 int SYS_VRB ;
 TYPE_1__* ShaderInfoForShader (int ) ;
 int Sys_FPrintf (int ,char*,...) ;
 TYPE_4__* bspBrushSides ;
 TYPE_3__* bspBrushes ;
 TYPE_6__* bspModels ;
 TYPE_2__* bspShaders ;
 int maxOpaqueBrush ;
 int memset (int*,int ,int) ;
 int numBSPBrushes ;
 scalar_t__ numOpaqueBrushes ;
 int* opaqueBrushes ;
 scalar_t__ qtrue ;
 int* safe_malloc (int) ;

void SetupBrushes( void ){
 int i, j, b, compileFlags;
 qboolean inside;
 bspBrush_t *brush;
 bspBrushSide_t *side;
 bspShader_t *shader;
 shaderInfo_t *si;



 Sys_FPrintf( SYS_VRB, "--- SetupBrushes ---\n" );


 if ( opaqueBrushes == ((void*)0) ) {
  opaqueBrushes = safe_malloc( numBSPBrushes / 8 + 1 );
 }


 memset( opaqueBrushes, 0, numBSPBrushes / 8 + 1 );
 numOpaqueBrushes = 0;


 for ( i = 0; i < bspModels[ 0 ].numBSPBrushes; i++ )
 {

  b = bspModels[ 0 ].firstBSPBrush + i;
  brush = &bspBrushes[ b ];


  inside = qtrue;
  compileFlags = 0;
  for ( j = 0; j < brush->numSides && inside; j++ )
  {

   side = &bspBrushSides[ brush->firstSide + j ];
   shader = &bspShaders[ side->shaderNum ];


   si = ShaderInfoForShader( shader->shader );
   if ( si == ((void*)0) ) {
    continue;
   }


   compileFlags |= si->compileFlags;
  }


  if ( !( compileFlags & C_TRANSLUCENT ) ) {
   opaqueBrushes[ b >> 3 ] |= ( 1 << ( b & 7 ) );
   numOpaqueBrushes++;
   maxOpaqueBrush = i;
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d opaque brushes\n", numOpaqueBrushes );
}
