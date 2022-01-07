
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_PushMenu (int *) ;
 int UI_TeamOrdersMenu_Init () ;
 TYPE_1__ teamOrdersMenuInfo ;

void UI_TeamOrdersMenu( void ) {
 UI_TeamOrdersMenu_Init();
 UI_PushMenu( &teamOrdersMenuInfo.menu );
}
