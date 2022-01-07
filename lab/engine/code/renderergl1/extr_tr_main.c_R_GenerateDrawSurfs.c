
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int viewParms; } ;


 int R_AddEntitySurfaces () ;
 int R_AddPolygonSurfaces () ;
 int R_AddWorldSurfaces () ;
 int R_SetFarClip () ;
 int R_SetupProjectionZ (int *) ;
 TYPE_1__ tr ;

void R_GenerateDrawSurfs( void ) {
 R_AddWorldSurfaces ();

 R_AddPolygonSurfaces();
 R_SetFarClip();


 R_SetupProjectionZ (&tr.viewParms);

 R_AddEntitySurfaces ();
}
