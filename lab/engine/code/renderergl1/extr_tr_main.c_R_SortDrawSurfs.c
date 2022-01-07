
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ sort; int name; } ;
typedef TYPE_1__ shader_t ;
struct TYPE_11__ {int sort; } ;
typedef TYPE_2__ drawSurf_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {int (* Error ) (int ,char*,int ) ;} ;


 int ERR_DROP ;
 int R_AddDrawSurfCmd (TYPE_2__*,int) ;
 int R_DecomposeSort (int ,int*,TYPE_1__**,int*,int*) ;
 scalar_t__ R_MirrorViewBySurface (TYPE_2__*,int) ;
 int R_RadixSort (TYPE_2__*,int) ;
 scalar_t__ SS_BAD ;
 scalar_t__ SS_PORTAL ;
 TYPE_4__* r_portalOnly ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int ) ;

void R_SortDrawSurfs( drawSurf_t *drawSurfs, int numDrawSurfs ) {
 shader_t *shader;
 int fogNum;
 int entityNum;
 int dlighted;
 int i;


 if ( numDrawSurfs < 1 ) {

  R_AddDrawSurfCmd( drawSurfs, numDrawSurfs );
  return;
 }


 R_RadixSort( drawSurfs, numDrawSurfs );



 for ( i = 0 ; i < numDrawSurfs ; i++ ) {
  R_DecomposeSort( (drawSurfs+i)->sort, &entityNum, &shader, &fogNum, &dlighted );

  if ( shader->sort > SS_PORTAL ) {
   break;
  }


  if ( shader->sort == SS_BAD ) {
   ri.Error (ERR_DROP, "Shader '%s'with sort == SS_BAD", shader->name );
  }


  if ( R_MirrorViewBySurface( (drawSurfs+i), entityNum) ) {

   if ( r_portalOnly->integer ) {
    return;
   }
   break;
  }
 }

 R_AddDrawSurfCmd( drawSurfs, numDrawSurfs );
}
