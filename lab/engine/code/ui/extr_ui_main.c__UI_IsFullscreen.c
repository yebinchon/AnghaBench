
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Menus_AnyFullScreenVisible () ;

qboolean _UI_IsFullscreen( void ) {
 return Menus_AnyFullScreenVisible();
}
