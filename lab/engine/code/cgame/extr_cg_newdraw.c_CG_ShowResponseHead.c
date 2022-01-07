
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int voiceTime; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 int Menus_OpenByName (char*) ;
 TYPE_1__ cg ;
 int trap_Cvar_Set (char*,int ) ;
 int va (char*,int) ;

void CG_ShowResponseHead(void) {
 float x, y, w, h;

 x = 72;
 y = w = h = 0;
 CG_AdjustFrom640( &x, &y, &w, &h );

 Menus_OpenByName("voiceMenu");
 trap_Cvar_Set("cl_conXOffset", va("%d", (int)x));
 cg.voiceTime = cg.time;
}
