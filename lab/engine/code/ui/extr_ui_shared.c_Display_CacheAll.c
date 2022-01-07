
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Menu_CacheContents (int *) ;
 int * Menus ;
 int menuCount ;

void Display_CacheAll(void) {
 int i;
 for (i = 0; i < menuCount; i++) {
  Menu_CacheContents(&Menus[i]);
 }
}
