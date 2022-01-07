
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int graphics; int menu; } ;


 int GraphicsOptions_MenuInit () ;
 int Menu_SetCursorToItem (int *,int *) ;
 int UI_PushMenu (int *) ;
 TYPE_1__ s_graphicsoptions ;

void UI_GraphicsOptionsMenu( void ) {
 GraphicsOptions_MenuInit();
 UI_PushMenu( &s_graphicsoptions.menu );
 Menu_SetCursorToItem( &s_graphicsoptions.menu, &s_graphicsoptions.graphics );
}
