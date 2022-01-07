
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_Mods_MenuInit () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_mods ;

void UI_ModsMenu( void ) {
 UI_Mods_MenuInit();
 UI_PushMenu( &s_mods.menu );
}
