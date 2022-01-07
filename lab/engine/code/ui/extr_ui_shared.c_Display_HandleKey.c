
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int menuDef_t ;


 int * Display_CaptureItem (int,int) ;
 int * Menu_GetFocused () ;
 int Menu_HandleKey (int *,int,int ) ;

void Display_HandleKey(int key, qboolean down, int x, int y) {
 menuDef_t *menu = Display_CaptureItem(x, y);
 if (menu == ((void*)0)) {
  menu = Menu_GetFocused();
 }
 if (menu) {
  Menu_HandleKey(menu, key, down );
 }
}
