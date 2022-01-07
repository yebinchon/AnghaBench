
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int windowAspect; int buffHeight; int buffWidth; int vidHeight; int vidWidth; } ;
struct TYPE_3__ {int (* Cvar_Get ) (char*,char*,int) ;} ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int R_GetModeInfo (int *,int *,int *,int *,int *,int) ;
 TYPE_2__ glConfig ;
 int r_allowResize ;
 int r_centerWindow ;
 int r_motionblur ;
 int r_sdlDriver ;
 int r_tvConsoleMode ;
 int r_tvMode ;
 int r_tvModeAspect ;
 TYPE_1__ ri ;
 int stub1 (char*,char*,int) ;
 int stub2 (char*,char*,int) ;
 int stub3 (char*,char*,int) ;
 int stub4 (char*,char*,int) ;
 int stub5 (char*,char*,int) ;
 int stub6 (char*,char*,int) ;
 int stub7 (char*,char*,int) ;

void GLimp_CommonPreInit(void) {
  r_sdlDriver = ri.Cvar_Get("r_sdlDriver", "", CVAR_ROM);
  r_allowResize = ri.Cvar_Get("r_allowResize", "0", CVAR_ARCHIVE | CVAR_LATCH);
  r_centerWindow =
      ri.Cvar_Get("r_centerWindow", "0", CVAR_ARCHIVE | CVAR_LATCH);
  r_tvMode = ri.Cvar_Get("r_tvMode", "-1", CVAR_LATCH | CVAR_ARCHIVE);
  r_tvModeAspect =
      ri.Cvar_Get("r_tvModeAspect", "0", CVAR_LATCH | CVAR_ARCHIVE);
  r_tvConsoleMode =
      ri.Cvar_Get("r_tvConsoleMode", "0", CVAR_LATCH | CVAR_ARCHIVE);
  r_motionblur = ri.Cvar_Get("r_motionblur", "0", CVAR_ARCHIVE | CVAR_LATCH);

  R_GetModeInfo(&glConfig.vidWidth, &glConfig.vidHeight, &glConfig.buffWidth,
                &glConfig.buffHeight, &glConfig.windowAspect, -1);
}
