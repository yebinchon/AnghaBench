
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_5__ {int shaderNum; int planeNum; } ;
typedef TYPE_1__ ibspBrushSide_t ;
typedef int bspHeader_t ;
struct TYPE_6__ {int surfaceNum; int shaderNum; int planeNum; } ;
typedef TYPE_2__ bspBrushSide_t ;


 TYPE_1__* GetLump (int *,int ) ;
 int GetLumpElements (int *,int ,int) ;
 int LUMP_BRUSHSIDES ;
 TYPE_2__* bspBrushSides ;
 int numBSPBrushSides ;

__attribute__((used)) static void CopyBrushSidesLump( ibspHeader_t *header ){
 int i;
 ibspBrushSide_t *in;
 bspBrushSide_t *out;



 numBSPBrushSides = GetLumpElements( (bspHeader_t*) header, LUMP_BRUSHSIDES, sizeof( *in ) );


 in = GetLump( (bspHeader_t*) header, LUMP_BRUSHSIDES );
 out = bspBrushSides;
 for ( i = 0; i < numBSPBrushSides; i++ )
 {
  out->planeNum = in->planeNum;
  out->shaderNum = in->shaderNum;
  out->surfaceNum = -1;
  in++;
  out++;
 }
}
