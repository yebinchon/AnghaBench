
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_PushMenu (int *) ;
 int UI_SaveConfigMenu_Init () ;
 TYPE_1__ saveConfig ;

void UI_SaveConfigMenu( void ) {
 UI_SaveConfigMenu_Init();
 UI_PushMenu( &saveConfig.menu );
}
