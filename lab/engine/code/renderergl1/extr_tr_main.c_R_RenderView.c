
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ viewportWidth; scalar_t__ viewportHeight; int frameCount; int frameSceneNum; } ;
typedef TYPE_2__ viewParms_t ;
struct TYPE_10__ {int value; } ;
struct TYPE_7__ {int numDrawSurfs; scalar_t__ drawSurfs; } ;
struct TYPE_9__ {TYPE_1__ refdef; TYPE_2__ viewParms; int viewCount; int frameCount; int frameSceneNum; } ;


 int MAX_DRAWSURFS ;
 int R_DebugGraphics () ;
 int R_GenerateDrawSurfs () ;
 int R_RotateForViewer () ;
 int R_SetupProjection (TYPE_2__*,int ,int ) ;
 int R_SortDrawSurfs (scalar_t__,int) ;
 int qtrue ;
 TYPE_4__* r_zproj ;
 TYPE_3__ tr ;

void R_RenderView (viewParms_t *parms) {
 int firstDrawSurf;
 int numDrawSurfs;

 if ( parms->viewportWidth <= 0 || parms->viewportHeight <= 0 ) {
  return;
 }

 tr.viewCount++;

 tr.viewParms = *parms;
 tr.viewParms.frameSceneNum = tr.frameSceneNum;
 tr.viewParms.frameCount = tr.frameCount;

 firstDrawSurf = tr.refdef.numDrawSurfs;

 tr.viewCount++;


 R_RotateForViewer ();

 R_SetupProjection(&tr.viewParms, r_zproj->value, qtrue);

 R_GenerateDrawSurfs();




 numDrawSurfs = tr.refdef.numDrawSurfs;
 if ( numDrawSurfs > MAX_DRAWSURFS ) {
  numDrawSurfs = MAX_DRAWSURFS;
 }

 R_SortDrawSurfs( tr.refdef.drawSurfs + firstDrawSurf, numDrawSurfs - firstDrawSurf );


 R_DebugGraphics();
}
