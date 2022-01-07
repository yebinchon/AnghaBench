
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_5__ {int * color; int normal; int * lightmap; int * st; int xyz; } ;
typedef TYPE_1__ ibspDrawVert_t ;
typedef int bspHeader_t ;
struct TYPE_6__ {int ** color; int normal; int ** lightmap; int * st; int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;


 TYPE_1__* GetLump (int *,int ) ;
 int GetLumpElements (int *,int ,int) ;
 int LUMP_DRAWVERTS ;
 int SetDrawVerts (int) ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspDrawVerts ;
 int numBSPDrawVerts ;

__attribute__((used)) static void CopyDrawVertsLump( ibspHeader_t *header ){
 int i;
 ibspDrawVert_t *in;
 bspDrawVert_t *out;



 numBSPDrawVerts = GetLumpElements( (bspHeader_t*) header, LUMP_DRAWVERTS, sizeof( *in ) );
 SetDrawVerts( numBSPDrawVerts );


 in = GetLump( (bspHeader_t*) header, LUMP_DRAWVERTS );
 out = bspDrawVerts;
 for ( i = 0; i < numBSPDrawVerts; i++ )
 {
  VectorCopy( in->xyz, out->xyz );
  out->st[ 0 ] = in->st[ 0 ];
  out->st[ 1 ] = in->st[ 1 ];

  out->lightmap[ 0 ][ 0 ] = in->lightmap[ 0 ];
  out->lightmap[ 0 ][ 1 ] = in->lightmap[ 1 ];

  VectorCopy( in->normal, out->normal );

  out->color[ 0 ][ 0 ] = in->color[ 0 ];
  out->color[ 0 ][ 1 ] = in->color[ 1 ];
  out->color[ 0 ][ 2 ] = in->color[ 2 ];
  out->color[ 0 ][ 3 ] = in->color[ 3 ];

  in++;
  out++;
 }
}
