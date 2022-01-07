
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_8__ {int shaderNum; int planeNum; } ;
typedef TYPE_1__ ibspBrushSide_t ;
typedef int bspHeader_t ;
struct TYPE_9__ {int shaderNum; int planeNum; } ;
typedef TYPE_2__ bspBrushSide_t ;
typedef int FILE ;


 int AddLump (int *,int *,int ,TYPE_1__*,int) ;
 int LUMP_BRUSHSIDES ;
 TYPE_2__* bspBrushSides ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int numBSPBrushSides ;
 TYPE_1__* safe_malloc (int) ;

__attribute__((used)) static void AddBrushSidesLump( FILE *file, ibspHeader_t *header ){
 int i, size;
 bspBrushSide_t *in;
 ibspBrushSide_t *buffer, *out;



 size = numBSPBrushSides * sizeof( *buffer );
 buffer = safe_malloc( size );
 memset( buffer, 0, size );


 in = bspBrushSides;
 out = buffer;
 for ( i = 0; i < numBSPBrushSides; i++ )
 {
  out->planeNum = in->planeNum;
  out->shaderNum = in->shaderNum;
  in++;
  out++;
 }


 AddLump( file, (bspHeader_t*) header, LUMP_BRUSHSIDES, buffer, size );


 free( buffer );
}
