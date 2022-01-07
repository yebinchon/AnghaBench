
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__ viewParms; } ;


 int R_AddEntitySurfaces () ;
 int R_AddPolygonSurfaces () ;
 int R_AddWorldSurfaces () ;
 int R_SetFarClip () ;
 int R_SetupProjectionZ (TYPE_2__*) ;
 int VPF_SHADOWMAP ;
 TYPE_1__ tr ;

void R_GenerateDrawSurfs( void ) {
 R_AddWorldSurfaces ();

 R_AddPolygonSurfaces();
 if (!(tr.viewParms.flags & VPF_SHADOWMAP))
 {
  R_SetFarClip();
 }


 R_SetupProjectionZ (&tr.viewParms);

 R_AddEntitySurfaces ();
}
