
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int * verts; } ;
typedef TYPE_1__ mesh_t ;
typedef int bspDrawVert_t ;



void InvertMesh( mesh_t *in ) {
 int w, h;
 bspDrawVert_t temp;

 for ( h = 0 ; h < in->height ; h++ ) {
  for ( w = 0 ; w < in->width / 2 ; w++ ) {
   temp = in->verts[ h * in->width + w ];
   in->verts[ h * in->width + w ] = in->verts[ h * in->width + in->width - 1 - w ];
   in->verts[ h * in->width + in->width - 1 - w ] = temp;
  }
 }
}
