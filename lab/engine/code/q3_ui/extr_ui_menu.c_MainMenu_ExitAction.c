
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_CreditMenu () ;
 int UI_PopMenu () ;

__attribute__((used)) static void MainMenu_ExitAction( qboolean result ) {
 if( !result ) {
  return;
 }
 UI_PopMenu();
 UI_CreditMenu();
}
