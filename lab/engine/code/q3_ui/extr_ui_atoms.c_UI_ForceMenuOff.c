
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * activemenu; scalar_t__ menusp; } ;


 int KEYCATCH_UI ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Key_ClearStates () ;
 int trap_Key_GetCatcher () ;
 int trap_Key_SetCatcher (int) ;
 TYPE_1__ uis ;

void UI_ForceMenuOff (void)
{
 uis.menusp = 0;
 uis.activemenu = ((void*)0);

 trap_Key_SetCatcher( trap_Key_GetCatcher() & ~KEYCATCH_UI );
 trap_Key_ClearStates();
 trap_Cvar_Set( "cl_paused", "0" );
}
