
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int GraphicsOptions_UpdateMenuItems () ;
 int Menu_Draw (int *) ;
 TYPE_1__ s_graphicsoptions ;

void GraphicsOptions_MenuDraw (void)
{

 GraphicsOptions_UpdateMenuItems();

 Menu_Draw( &s_graphicsoptions.menu );
}
