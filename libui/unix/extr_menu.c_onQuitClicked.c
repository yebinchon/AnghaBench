
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiMenuItem ;


 int uiQuit () ;
 scalar_t__ uiprivShouldQuit () ;

__attribute__((used)) static void onQuitClicked(uiMenuItem *item, uiWindow *w, void *data)
{
 if (uiprivShouldQuit())
  uiQuit();
}
