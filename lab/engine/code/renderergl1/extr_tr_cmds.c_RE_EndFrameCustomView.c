
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int vidHeight; int vidWidth; } ;
struct TYPE_8__ {int finishCalled; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_7__ {TYPE_1__ refdef; int registered; } ;


 int R_InitNextFrame () ;
 int R_IssueRenderCommands (int ) ;
 int SwapVidAndBuff (TYPE_4__*) ;
 TYPE_4__ glConfig ;
 TYPE_3__ glState ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ tr ;

void RE_EndFrameCustomView( void ) {
 if ( !tr.registered ) {
  return;
 }
 R_IssueRenderCommands( qtrue );
 R_InitNextFrame();
 SwapVidAndBuff( &glConfig );
 tr.refdef.width = glConfig.vidWidth;
 tr.refdef.height = glConfig.vidHeight;
 glState.finishCalled = qfalse;
}
