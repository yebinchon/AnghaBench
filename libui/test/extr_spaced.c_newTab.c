
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTab ;


 int append (int *,int ) ;
 int tab ;
 int * uiNewTab () ;

uiTab *newTab(void)
{
 uiTab *t;

 t = uiNewTab();
 append(t, tab);
 return t;
}
