
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_5__ {scalar_t__ h; scalar_t__ y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_6__ {scalar_t__ location; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_7__ {TYPE_2__* clientinfo; } ;


 char* CG_ConfigString (scalar_t__) ;
 size_t CG_GetSelectedPlayer () ;
 int CG_Text_Paint (int ,scalar_t__,float,int ,char const*,int ,int ,int) ;
 scalar_t__ CS_LOCATIONS ;
 TYPE_3__ cgs ;
 int* sortedTeamPlayers ;

__attribute__((used)) static void CG_DrawSelectedPlayerLocation( rectDef_t *rect, float scale, vec4_t color, int textStyle ) {
 clientInfo_t *ci;
  ci = cgs.clientinfo + sortedTeamPlayers[CG_GetSelectedPlayer()];
  if (ci) {
  const char *p = CG_ConfigString(CS_LOCATIONS + ci->location);
  if (!p || !*p) {
   p = "unknown";
  }
    CG_Text_Paint(rect->x, rect->y + rect->h, scale, color, p, 0, 0, textStyle);
  }
}
