
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; TYPE_1__* verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_4__ {int * xyz; } ;


 int Sys_Printf (char*,...) ;

void PrintMesh( mesh_t *m ) {
 int i, j;

 for ( i = 0 ; i < m->height ; i++ ) {
  for ( j = 0 ; j < m->width ; j++ ) {
   Sys_Printf( "(%5.2f %5.2f %5.2f) "
      , m->verts[i * m->width + j].xyz[0]
      , m->verts[i * m->width + j].xyz[1]
      , m->verts[i * m->width + j].xyz[2] );
  }
  Sys_Printf( "\n" );
 }
}
