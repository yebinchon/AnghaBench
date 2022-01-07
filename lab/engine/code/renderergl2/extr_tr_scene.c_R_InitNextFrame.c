
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; } ;
struct TYPE_4__ {TYPE_1__ commands; } ;


 TYPE_2__* backEndData ;
 scalar_t__ r_firstSceneDlight ;
 scalar_t__ r_firstSceneDrawSurf ;
 scalar_t__ r_firstSceneEntity ;
 scalar_t__ r_firstScenePoly ;
 scalar_t__ r_numdlights ;
 scalar_t__ r_numentities ;
 scalar_t__ r_numpolys ;
 scalar_t__ r_numpolyverts ;

void R_InitNextFrame( void ) {
 backEndData->commands.used = 0;

 r_firstSceneDrawSurf = 0;

 r_numdlights = 0;
 r_firstSceneDlight = 0;

 r_numentities = 0;
 r_firstSceneEntity = 0;

 r_numpolys = 0;
 r_firstScenePoly = 0;

 r_numpolyverts = 0;
}
