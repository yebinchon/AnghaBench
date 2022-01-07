
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ sort; int name; } ;
typedef TYPE_2__ shader_t ;
struct TYPE_14__ {int sort; } ;
typedef TYPE_3__ drawSurf_t ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {int (* Error ) (int ,char*,int ) ;} ;
struct TYPE_12__ {int flags; } ;
struct TYPE_15__ {TYPE_1__ viewParms; } ;


 int ERR_DROP ;
 int R_AddDrawSurfCmd (TYPE_3__*,int) ;
 int R_DecomposeSort (int ,int*,TYPE_2__**,int*,int*,int*) ;
 scalar_t__ R_MirrorViewBySurface (TYPE_3__*,int) ;
 int R_RadixSort (TYPE_3__*,int) ;
 scalar_t__ SS_BAD ;
 scalar_t__ SS_PORTAL ;
 int VPF_DEPTHSHADOW ;
 int VPF_SHADOWMAP ;
 TYPE_6__* r_portalOnly ;
 TYPE_5__ ri ;
 int stub1 (int ,char*,int ) ;
 TYPE_4__ tr ;

void R_SortDrawSurfs( drawSurf_t *drawSurfs, int numDrawSurfs ) {
 shader_t *shader;
 int fogNum;
 int entityNum;
 int dlighted;
 int pshadowed;
 int i;




 if ( numDrawSurfs < 1 ) {

  R_AddDrawSurfCmd( drawSurfs, numDrawSurfs );
  return;
 }


 R_RadixSort( drawSurfs, numDrawSurfs );


 if (tr.viewParms.flags & (VPF_SHADOWMAP | VPF_DEPTHSHADOW))
 {
  R_AddDrawSurfCmd( drawSurfs, numDrawSurfs );
  return;
 }



 for ( i = 0 ; i < numDrawSurfs ; i++ ) {
  R_DecomposeSort( (drawSurfs+i)->sort, &entityNum, &shader, &fogNum, &dlighted, &pshadowed );

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
