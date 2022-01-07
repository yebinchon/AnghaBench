
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int numBSPSurfaces; int firstBSPSurface; } ;
typedef TYPE_1__ bspModel_t ;
typedef int bspDrawSurface_t ;
typedef int FILE ;


 int ConvertSurface (int *,TYPE_1__*,int,int *,int,int ) ;
 int * bspDrawSurfaces ;

__attribute__((used)) static void ConvertModel( FILE *f, bspModel_t *model, int modelNum, vec3_t origin ){
 int i, s;
 bspDrawSurface_t *ds;



 for ( i = 0; i < model->numBSPSurfaces; i++ )
 {
  s = i + model->firstBSPSurface;
  ds = &bspDrawSurfaces[ s ];
  ConvertSurface( f, model, modelNum, ds, s, origin );
 }
}
