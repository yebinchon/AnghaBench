
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbspHeader_t ;
typedef int bspHeader_t ;
typedef int bspGridPoint_t ;


 void* GetLump (int *,int ) ;
 int GetLumpElements (int *,int ,int) ;
 int LUMP_LIGHTARRAY ;
 int LUMP_LIGHTGRID ;
 int * bspGridPoints ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int numBSPGridPoints ;
 int * safe_malloc (int) ;

__attribute__((used)) static void CopyLightGridLumps( rbspHeader_t *header ){
 int i;
 unsigned short *inArray;
 bspGridPoint_t *in, *out;



 numBSPGridPoints = GetLumpElements( (bspHeader_t*) header, LUMP_LIGHTARRAY, sizeof( *inArray ) );


 bspGridPoints = safe_malloc( numBSPGridPoints * sizeof( *bspGridPoints ) );
 memset( bspGridPoints, 0, numBSPGridPoints * sizeof( *bspGridPoints ) );


 inArray = GetLump( (bspHeader_t*) header, LUMP_LIGHTARRAY );
 in = GetLump( (bspHeader_t*) header, LUMP_LIGHTGRID );
 out = bspGridPoints;
 for ( i = 0; i < numBSPGridPoints; i++ )
 {
  memcpy( out, &in[ *inArray ], sizeof( *in ) );
  inArray++;
  out++;
 }
}
