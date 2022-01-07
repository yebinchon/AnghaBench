
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int (* CM_DrawDebugSurface ) (int ) ;} ;
struct TYPE_5__ {int rdflags; } ;
struct TYPE_6__ {int whiteImage; TYPE_1__ refdef; } ;


 int CT_FRONT_SIDED ;
 int GL_BindToTMU (int ,int ) ;
 int GL_Cull (int ) ;
 int RDF_NOWORLDMODEL ;
 int R_DebugPolygon ;
 int R_IssuePendingRenderCommands () ;
 int TB_COLORMAP ;
 TYPE_4__* r_debugSurface ;
 TYPE_3__ ri ;
 int stub1 (int ) ;
 TYPE_2__ tr ;

void R_DebugGraphics( void ) {
 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return;
 }
 if ( !r_debugSurface->integer ) {
  return;
 }

 R_IssuePendingRenderCommands();

 GL_BindToTMU(tr.whiteImage, TB_COLORMAP);
 GL_Cull( CT_FRONT_SIDED );
 ri.CM_DrawDebugSurface( R_DebugPolygon );
}
