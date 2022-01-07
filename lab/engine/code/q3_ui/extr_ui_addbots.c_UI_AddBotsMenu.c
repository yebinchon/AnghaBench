
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_AddBotsMenu_Init () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ addBotsMenuInfo ;

void UI_AddBotsMenu( void ) {
 UI_AddBotsMenu_Init();
 UI_PushMenu( &addBotsMenuInfo.menu );
}
