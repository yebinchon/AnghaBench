
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_8__ {int * color; int normal; int * lightmap; int * st; int xyz; } ;
typedef TYPE_1__ ibspDrawVert_t ;
typedef int bspHeader_t ;
struct TYPE_9__ {int ** color; int normal; int ** lightmap; int * st; int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;
typedef int FILE ;


 int AddLump (int *,int *,int ,TYPE_1__*,int) ;
 int LUMP_DRAWVERTS ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspDrawVerts ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int numBSPDrawVerts ;
 TYPE_1__* safe_malloc (int) ;

__attribute__((used)) static void AddDrawVertsLump( FILE *file, ibspHeader_t *header ){
 int i, size;
 bspDrawVert_t *in;
 ibspDrawVert_t *buffer, *out;



 size = numBSPDrawVerts * sizeof( *buffer );
 buffer = safe_malloc( size );
 memset( buffer, 0, size );


 in = bspDrawVerts;
 out = buffer;
 for ( i = 0; i < numBSPDrawVerts; i++ )
 {
  VectorCopy( in->xyz, out->xyz );
  out->st[ 0 ] = in->st[ 0 ];
  out->st[ 1 ] = in->st[ 1 ];

  out->lightmap[ 0 ] = in->lightmap[ 0 ][ 0 ];
  out->lightmap[ 1 ] = in->lightmap[ 0 ][ 1 ];

  VectorCopy( in->normal, out->normal );

  out->color[ 0 ] = in->color[ 0 ][ 0 ];
  out->color[ 1 ] = in->color[ 0 ][ 1 ];
  out->color[ 2 ] = in->color[ 0 ][ 2 ];
  out->color[ 3 ] = in->color[ 0 ][ 3 ];

  in++;
  out++;
 }


 AddLump( file, (bspHeader_t*) header, LUMP_DRAWVERTS, buffer, size );


 free( buffer );
}
