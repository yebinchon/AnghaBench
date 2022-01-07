
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ type; int numVerts; TYPE_2__* verts; } ;
typedef TYPE_1__ mapDrawSurface_t ;
struct TYPE_7__ {float* st; float** lightmap; int** color; int normal; int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;
typedef int avg ;


 float DEGENERATE_EPSILON ;
 int MAX_LIGHTMAPS ;
 scalar_t__ SURFACE_FACE ;
 int SYS_VRB ;
 int SnapWeldVector (int ,int ,int ) ;
 int Sys_FPrintf (int ,char*) ;
 int VectorAdd (int ,int ,int ) ;
 float VectorLength (int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int qfalse ;
 int qtrue ;

qboolean FixBrokenSurface( mapDrawSurface_t *ds ){
 qboolean valid = qtrue;
 bspDrawVert_t *dv1, *dv2, avg;
 int i, j, k;
 float dist;



 if ( ds == ((void*)0) ) {
  return qfalse;
 }
 if ( ds->type != SURFACE_FACE ) {
  return qfalse;
 }


 for ( i = 0; i < ds->numVerts; i++ )
 {

  if ( ds->numVerts == 3 ) {
   return valid;
  }


  dv1 = &ds->verts[ i ];
  dv2 = &ds->verts[ ( i + 1 ) % ds->numVerts ];


  VectorSubtract( dv1->xyz, dv2->xyz, avg.xyz );
  dist = VectorLength( avg.xyz );
  if ( dist < DEGENERATE_EPSILON ) {
   valid = qfalse;
   Sys_FPrintf( SYS_VRB, "WARNING: Degenerate T-junction edge found, fixing...\n" );



   SnapWeldVector( dv1->xyz, dv2->xyz, avg.xyz );
   VectorAdd( dv1->normal, dv2->normal, avg.normal );
   VectorNormalize( avg.normal, avg.normal );
   avg.st[ 0 ] = ( dv1->st[ 0 ] + dv2->st[ 0 ] ) * 0.5f;
   avg.st[ 1 ] = ( dv1->st[ 1 ] + dv2->st[ 1 ] ) * 0.5f;


   for ( k = 0; k < MAX_LIGHTMAPS; k++ )
   {
    avg.lightmap[ k ][ 0 ] = ( dv1->lightmap[ k ][ 0 ] + dv2->lightmap[ k ][ 0 ] ) * 0.5f;
    avg.lightmap[ k ][ 1 ] = ( dv1->lightmap[ k ][ 1 ] + dv2->lightmap[ k ][ 1 ] ) * 0.5f;
    for ( j = 0; j < 4; j++ )
     avg.color[ k ][ j ] = (int) ( dv1->color[ k ][ j ] + dv2->color[ k ][ j ] ) >> 1;
   }


   memcpy( dv1, &avg, sizeof( avg ) );


   for ( k = i + 2; k < ds->numVerts; k++ )
   {

    dv1 = &ds->verts[ k ];
    dv2 = &ds->verts[ k - 1 ];


    memcpy( dv2, dv1, sizeof( bspDrawVert_t ) );
   }
   ds->numVerts--;
  }
 }


 if ( ds->numVerts < 3 ) {
  valid = qfalse;
 }
 return valid;
}
