
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTab ;


 int * uiNewTab () ;
 int uiTabAppend (int *,char*,int *) ;

__attribute__((used)) static uiTab *newt(int tt)
{
 uiTab *t;

 t = uiNewTab();
 if (tt)
  uiTabAppend(t, "Test", ((void*)0));
 return t;
}
