
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_11__ {scalar_t__ pm_type; } ;
struct TYPE_15__ {int deferredPlayerLoading; scalar_t__* killerName; int scoreFadeTime; TYPE_2__ predictedPlayerState; scalar_t__ showScores; scalar_t__ warmup; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ gametype; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_12__ {TYPE_1__ window; } ;


 scalar_t__ CG_DrawOldScoreboard () ;
 int CG_FadeColor (int ,int ) ;
 int CG_LoadDeferredPlayers () ;
 int CG_SetScoreSelection (TYPE_3__*) ;
 int FADE_TIME ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 int Menu_Paint (TYPE_3__*,scalar_t__) ;
 TYPE_3__* Menus_FindByName (char*) ;
 scalar_t__ PM_DEAD ;
 scalar_t__ PM_INTERMISSION ;
 int WINDOW_FORCED ;
 TYPE_6__ cg ;
 TYPE_5__ cg_paused ;
 TYPE_4__ cgs ;
 TYPE_3__* menuScoreboard ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static qboolean CG_DrawScoreboard( void ) {
 return CG_DrawOldScoreboard();

}
