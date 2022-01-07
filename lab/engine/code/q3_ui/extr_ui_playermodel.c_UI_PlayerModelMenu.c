
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t selectedmodel; int * pics; int menu; } ;


 size_t MAX_MODELSPERPAGE ;
 int Menu_SetCursorToItem (int *,int *) ;
 int PlayerModel_MenuInit () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_playermodel ;

void UI_PlayerModelMenu(void)
{
 PlayerModel_MenuInit();

 UI_PushMenu( &s_playermodel.menu );

 Menu_SetCursorToItem( &s_playermodel.menu, &s_playermodel.pics[s_playermodel.selectedmodel % MAX_MODELSPERPAGE] );
}
