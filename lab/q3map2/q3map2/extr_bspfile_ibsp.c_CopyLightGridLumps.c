
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_7__ {int * latLong; int directed; int ambient; } ;
typedef TYPE_1__ ibspGridPoint_t ;
typedef int bspHeader_t ;
struct TYPE_8__ {int * latLong; int * styles; int * directed; int * ambient; } ;
typedef TYPE_2__ bspGridPoint_t ;


 TYPE_1__* GetLump (int *,int ) ;
 int GetLumpElements (int *,int ,int) ;
 int LS_NONE ;
 int LS_NORMAL ;
 int LUMP_LIGHTGRID ;
 int MAX_LIGHTMAPS ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspGridPoints ;
 int memset (TYPE_2__*,int ,int) ;
 int numBSPGridPoints ;
 TYPE_2__* safe_malloc (int) ;

__attribute__((used)) static void CopyLightGridLumps( ibspHeader_t *header ){
 int i, j;
 ibspGridPoint_t *in;
 bspGridPoint_t *out;



 numBSPGridPoints = GetLumpElements( (bspHeader_t*) header, LUMP_LIGHTGRID, sizeof( *in ) );


 bspGridPoints = safe_malloc( numBSPGridPoints * sizeof( *bspGridPoints ) );
 memset( bspGridPoints, 0, numBSPGridPoints * sizeof( *bspGridPoints ) );


 in = GetLump( (bspHeader_t*) header, LUMP_LIGHTGRID );
 out = bspGridPoints;
 for ( i = 0; i < numBSPGridPoints; i++ )
 {
  for ( j = 0; j < MAX_LIGHTMAPS; j++ )
  {
   VectorCopy( in->ambient, out->ambient[ j ] );
   VectorCopy( in->directed, out->directed[ j ] );
   out->styles[ j ] = LS_NONE;
  }

  out->styles[ 0 ] = LS_NORMAL;

  out->latLong[ 0 ] = in->latLong[ 0 ];
  out->latLong[ 1 ] = in->latLong[ 1 ];

  in++;
  out++;
 }
}
