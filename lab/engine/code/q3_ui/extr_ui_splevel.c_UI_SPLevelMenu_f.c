
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ menusp; } ;


 int KEYCATCH_UI ;
 int UI_SPLevelMenu () ;
 int trap_Key_SetCatcher (int ) ;
 TYPE_1__ uis ;

void UI_SPLevelMenu_f( void ) {
 trap_Key_SetCatcher( KEYCATCH_UI );
 uis.menusp = 0;
 UI_SPLevelMenu();
}
