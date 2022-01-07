
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numDrawSurfs; } ;
struct TYPE_4__ {TYPE_1__ refdef; } ;


 int r_firstSceneDlight ;
 int r_firstSceneDrawSurf ;
 int r_firstSceneEntity ;
 int r_firstScenePoly ;
 int r_numdlights ;
 int r_numentities ;
 int r_numpolys ;
 TYPE_2__ tr ;

void RE_EndScene(void)
{

 r_firstSceneDrawSurf = tr.refdef.numDrawSurfs;
 r_firstSceneEntity = r_numentities;
 r_firstSceneDlight = r_numdlights;
 r_firstScenePoly = r_numpolys;
}
