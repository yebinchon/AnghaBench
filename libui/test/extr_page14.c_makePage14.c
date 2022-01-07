
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiTab ;
struct TYPE_2__ {int (* f ) () ;int * name; } ;


 int * newTab () ;
 TYPE_1__* pages ;
 int stub1 () ;
 int uiTabAppend (int *,int *,int ) ;

uiTab *makePage14(void)
{
 uiTab *page14;
 int i;

 page14 = newTab();

 for (i = 0; pages[i].name != ((void*)0); i++)
  uiTabAppend(page14,
   pages[i].name,
   (*(pages[i].f))());

 return page14;
}
