
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
struct TYPE_8__ {int * latLong; int * directed; int * ambient; } ;
typedef TYPE_2__ bspGridPoint_t ;
typedef int FILE ;


 int AddLump (int *,int *,int ,TYPE_1__*,int) ;
 int LUMP_LIGHTGRID ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspGridPoints ;
 int free (TYPE_1__*) ;
 int numBSPGridPoints ;
 TYPE_1__* safe_malloc (int) ;

__attribute__((used)) static void AddLightGridLumps( FILE *file, ibspHeader_t *header ){
 int i;
 bspGridPoint_t *in;
 ibspGridPoint_t *buffer, *out;



 if ( bspGridPoints == ((void*)0) ) {
  return;
 }


 buffer = safe_malloc( numBSPGridPoints * sizeof( *out ) );


 in = bspGridPoints;
 out = buffer;
 for ( i = 0; i < numBSPGridPoints; i++ )
 {
  VectorCopy( in->ambient[ 0 ], out->ambient );
  VectorCopy( in->directed[ 0 ], out->directed );

  out->latLong[ 0 ] = in->latLong[ 0 ];
  out->latLong[ 1 ] = in->latLong[ 1 ];

  in++;
  out++;
 }


 AddLump( file, (bspHeader_t*) header, LUMP_LIGHTGRID, buffer, ( numBSPGridPoints * sizeof( *out ) ) );


 free( buffer );
}
