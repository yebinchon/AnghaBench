
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int network; int menu; } ;


 int Menu_SetCursorToItem (int *,int *) ;
 int UI_NetworkOptionsMenu_Init () ;
 int UI_PushMenu (int *) ;
 TYPE_1__ networkOptionsInfo ;

void UI_NetworkOptionsMenu( void ) {
 UI_NetworkOptionsMenu_Init();
 UI_PushMenu( &networkOptionsInfo.menu );
 Menu_SetCursorToItem( &networkOptionsInfo.menu, &networkOptionsInfo.network );
}
