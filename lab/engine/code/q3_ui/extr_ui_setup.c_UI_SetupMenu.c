
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_PushMenu (int *) ;
 int UI_SetupMenu_Init () ;
 TYPE_1__ setupMenuInfo ;

void UI_SetupMenu( void ) {
 UI_SetupMenu_Init();
 UI_PushMenu( &setupMenuInfo.menu );
}
