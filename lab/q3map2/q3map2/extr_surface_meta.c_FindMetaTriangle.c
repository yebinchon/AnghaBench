
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_16__ {int planeNum; float* plane; float* lightmapAxis; void** indexes; TYPE_1__* si; } ;
typedef TYPE_2__ metaTriangle_t ;
struct TYPE_17__ {float* normal; int xyz; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_18__ {float* normal; float dist; } ;
struct TYPE_15__ {int compileFlags; float* lightmapAxis; } ;


 int AddMetaTriangle () ;
 int C_VERTEXLIT ;
 int CalcLightmapAxis (float*,float*) ;
 void* FindMetaVertex (TYPE_3__*) ;
 scalar_t__ PlaneFromPoints (float*,int ,int ,int ) ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 int VectorSubtract (int ,int ,float*) ;
 TYPE_9__* mapplanes ;
 scalar_t__ memcmp (TYPE_2__*,TYPE_2__*,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* metaTriangles ;
 int numMetaTriangles ;
 scalar_t__ qfalse ;

int FindMetaTriangle( metaTriangle_t *src, bspDrawVert_t *a, bspDrawVert_t *b, bspDrawVert_t *c, int planeNum ){
 int triIndex;
 vec3_t dir;




 VectorSubtract( a->xyz, b->xyz, dir );
 if ( VectorLength( dir ) < 0.125f ) {
  return -1;
 }
 VectorSubtract( b->xyz, c->xyz, dir );
 if ( VectorLength( dir ) < 0.125f ) {
  return -1;
 }
 VectorSubtract( c->xyz, a->xyz, dir );
 if ( VectorLength( dir ) < 0.125f ) {
  return -1;
 }


 if ( planeNum >= 0 ) {

  src->planeNum = planeNum;
  VectorCopy( mapplanes[ planeNum ].normal, src->plane );
  src->plane[ 3 ] = mapplanes[ planeNum ].dist;
 }
 else
 {

  src->planeNum = -1;
  if ( PlaneFromPoints( src->plane, a->xyz, b->xyz, c->xyz ) == qfalse ) {
   return -1;
  }
 }


 if ( VectorLength( a->normal ) <= 0.0f ) {
  VectorCopy( src->plane, a->normal );
 }
 if ( VectorLength( b->normal ) <= 0.0f ) {
  VectorCopy( src->plane, b->normal );
 }
 if ( VectorLength( c->normal ) <= 0.0f ) {
  VectorCopy( src->plane, c->normal );
 }


 if ( !( src->si->compileFlags & C_VERTEXLIT ) &&
   src->lightmapAxis[ 0 ] == 0.0f && src->lightmapAxis[ 1 ] == 0.0f && src->lightmapAxis[ 2 ] == 0.0f ) {

  if ( src->si->lightmapAxis[ 0 ] || src->si->lightmapAxis[ 1 ] || src->si->lightmapAxis[ 2 ] ) {
   VectorCopy( src->si->lightmapAxis, src->lightmapAxis );
  }


  else{
   CalcLightmapAxis( src->plane, src->lightmapAxis );
  }
 }


 src->indexes[ 0 ] = FindMetaVertex( a );
 src->indexes[ 1 ] = FindMetaVertex( b );
 src->indexes[ 2 ] = FindMetaVertex( c );
 triIndex = AddMetaTriangle();


 memcpy( &metaTriangles[ triIndex ], src, sizeof( metaTriangle_t ) );


 return triIndex;
}
