
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demoversion; } ;


 int UI_InitMemory () ;
 int UI_LoadArenas () ;
 int UI_LoadBots () ;
 int qfalse ;
 TYPE_1__ uis ;

void UI_InitGameinfo( void ) {

 UI_InitMemory();
 UI_LoadArenas();
 UI_LoadBots();

 uis.demoversion = qfalse;
}
