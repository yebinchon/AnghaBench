
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* heightLodError; struct TYPE_7__* widthLodError; } ;
typedef TYPE_1__ srfGridMesh_t ;
struct TYPE_8__ {int (* Free ) (TYPE_1__*) ;} ;


 TYPE_5__ ri ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;

void R_FreeSurfaceGridMesh( srfGridMesh_t *grid ) {
 ri.Free(grid->widthLodError);
 ri.Free(grid->heightLodError);
 ri.Free(grid);
}
