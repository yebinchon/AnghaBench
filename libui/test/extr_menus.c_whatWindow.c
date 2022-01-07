
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiMenuItem ;


 int printf (char*,void*) ;

__attribute__((used)) static void whatWindow(uiMenuItem *item, uiWindow *w, void *data)
{
 printf("menu item clicked on window %p\n", (void *) w);
}
