
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int verts; int indexes; int heightLodError; int widthLodError; } ;
typedef TYPE_1__ srfBspSurface_t ;
struct TYPE_5__ {int (* Free ) (int ) ;} ;


 TYPE_2__ ri ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

__attribute__((used)) static void R_FreeSurfaceGridMeshData( srfBspSurface_t *grid ) {
 ri.Free(grid->widthLodError);
 ri.Free(grid->heightLodError);
 ri.Free(grid->indexes);
 ri.Free(grid->verts);
}
