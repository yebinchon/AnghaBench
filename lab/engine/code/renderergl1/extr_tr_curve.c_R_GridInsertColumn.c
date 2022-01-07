
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int width; int height; float* widthLodError; float* heightLodError; float lodRadius; int lodOrigin; TYPE_2__* verts; } ;
typedef TYPE_1__ srfGridMesh_t ;
struct TYPE_13__ {int xyz; } ;
typedef TYPE_2__ drawVert_t ;


 int LerpDrawVert (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int MAX_GRID_SIZE ;
 int MakeMeshNormals (int,int,TYPE_2__**) ;
 TYPE_1__* R_CreateSurfaceGridMesh (int,int,TYPE_2__**,float**) ;
 int R_FreeSurfaceGridMesh (TYPE_1__*) ;
 int VectorCopy (int ,int ) ;

srfGridMesh_t *R_GridInsertColumn( srfGridMesh_t *grid, int column, int row, vec3_t point, float loderror ) {
 int i, j;
 int width, height, oldwidth;
 drawVert_t ctrl[MAX_GRID_SIZE][MAX_GRID_SIZE];
 float errorTable[2][MAX_GRID_SIZE];
 float lodRadius;
 vec3_t lodOrigin;

 oldwidth = 0;
 width = grid->width + 1;
 if (width > MAX_GRID_SIZE)
  return ((void*)0);
 height = grid->height;
 for (i = 0; i < width; i++) {
  if (i == column) {

   for (j = 0; j < grid->height; j++) {
    LerpDrawVert( &grid->verts[j * grid->width + i-1], &grid->verts[j * grid->width + i], &ctrl[j][i] );
    if (j == row)
     VectorCopy(point, ctrl[j][i].xyz);
   }
   errorTable[0][i] = loderror;
   continue;
  }
  errorTable[0][i] = grid->widthLodError[oldwidth];
  for (j = 0; j < grid->height; j++) {
   ctrl[j][i] = grid->verts[j * grid->width + oldwidth];
  }
  oldwidth++;
 }
 for (j = 0; j < grid->height; j++) {
  errorTable[1][j] = grid->heightLodError[j];
 }



 MakeMeshNormals( width, height, ctrl );

 VectorCopy(grid->lodOrigin, lodOrigin);
 lodRadius = grid->lodRadius;

 R_FreeSurfaceGridMesh(grid);

 grid = R_CreateSurfaceGridMesh( width, height, ctrl, errorTable );
 grid->lodRadius = lodRadius;
 VectorCopy(lodOrigin, grid->lodOrigin);
 return grid;
}
