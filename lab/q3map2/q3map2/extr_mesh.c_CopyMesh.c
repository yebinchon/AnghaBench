
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; void* verts; } ;
typedef TYPE_1__ mesh_t ;


 int memcpy (void*,void*,int) ;
 void* safe_malloc (int) ;

mesh_t *CopyMesh( mesh_t *mesh ) {
 mesh_t *out;
 int size;

 out = safe_malloc( sizeof( *out ) );
 out->width = mesh->width;
 out->height = mesh->height;

 size = out->width * out->height * sizeof( *out->verts );
 out->verts = safe_malloc( size );
 memcpy( out->verts, mesh->verts, size );

 return out;
}
