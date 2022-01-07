
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int Menu_Draw (int *) ;
 int SoundOptions_UpdateMenuItems () ;
 TYPE_1__ soundOptionsInfo ;

void SoundOptions_MenuDraw (void)
{

 SoundOptions_UpdateMenuItems();

 Menu_Draw( &soundOptionsInfo.menu );
}
