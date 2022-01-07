
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int shaderInfo_t ;
struct TYPE_7__ {int numVerts; int numIndexes; struct TYPE_7__* indexes; struct TYPE_7__* verts; int * shaderInfo; int * sideRef; int type; } ;
typedef TYPE_1__ mapDrawSurface_t ;


 TYPE_1__* AllocDrawSurface (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 void* safe_malloc (int) ;

mapDrawSurface_t *CloneSurface( mapDrawSurface_t *src, shaderInfo_t *si ){
 mapDrawSurface_t *ds;



 if ( src == ((void*)0) || si == ((void*)0) ) {
  return ((void*)0);
 }


 ds = AllocDrawSurface( src->type );
 if ( ds == ((void*)0) ) {
  return ((void*)0);
 }


 memcpy( ds, src, sizeof( *ds ) );


 ds->sideRef = ((void*)0);


 ds->shaderInfo = si;


 if ( ds->numVerts > 0 ) {
  ds->verts = safe_malloc( ds->numVerts * sizeof( *ds->verts ) );
  memcpy( ds->verts, src->verts, ds->numVerts * sizeof( *ds->verts ) );
 }


 if ( ds->numIndexes <= 0 ) {
  return ds;
 }
 ds->indexes = safe_malloc( ds->numIndexes * sizeof( *ds->indexes ) );
 memcpy( ds->indexes, src->indexes, ds->numIndexes * sizeof( *ds->indexes ) );


 return ds;
}
