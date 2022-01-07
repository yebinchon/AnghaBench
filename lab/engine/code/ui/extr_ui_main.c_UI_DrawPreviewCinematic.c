
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {int h; int w; int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_5__ {int previewMovie; size_t movieIndex; int * movieList; } ;


 int CIN_loop ;
 int CIN_silent ;
 int UI_DrawCinematic (int,int ,int ,int ,int ) ;
 int trap_CIN_PlayCinematic (int ,int ,int ,int ,int ,int) ;
 int trap_CIN_RunCinematic (int) ;
 TYPE_2__ uiInfo ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawPreviewCinematic(rectDef_t *rect, float scale, vec4_t color) {
 if (uiInfo.previewMovie > -2) {
  uiInfo.previewMovie = trap_CIN_PlayCinematic(va("%s.roq", uiInfo.movieList[uiInfo.movieIndex]), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
  if (uiInfo.previewMovie >= 0) {
    trap_CIN_RunCinematic(uiInfo.previewMovie);
   UI_DrawCinematic(uiInfo.previewMovie, rect->x, rect->y, rect->w, rect->h);
  } else {
   uiInfo.previewMovie = -2;
  }
 }

}
