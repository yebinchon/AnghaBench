
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; TYPE_1__* verts; } ;
typedef TYPE_2__ srfGridMesh_t ;
struct TYPE_4__ {scalar_t__* xyz; } ;


 double fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;

int R_MergedHeightPoints(srfGridMesh_t *grid, int offset) {
 int i, j;

 for (i = 1; i < grid->height-1; i++) {
  for (j = i + 1; j < grid->height-1; j++) {
   if ( fabs(grid->verts[grid->width * i + offset].xyz[0] - grid->verts[grid->width * j + offset].xyz[0]) > .1) continue;
   if ( fabs(grid->verts[grid->width * i + offset].xyz[1] - grid->verts[grid->width * j + offset].xyz[1]) > .1) continue;
   if ( fabs(grid->verts[grid->width * i + offset].xyz[2] - grid->verts[grid->width * j + offset].xyz[2]) > .1) continue;
   return qtrue;
  }
 }
 return qfalse;
}
