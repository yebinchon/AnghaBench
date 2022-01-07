
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int append (int *,int ) ;
 int * uiNewWindow (char const*,int,int,int) ;
 int window ;

uiWindow *newWindow(const char *title, int width, int height, int hasMenubar)
{
 uiWindow *w;

 w = uiNewWindow(title, width, height, hasMenubar);
 append(w, window);
 return w;
}
