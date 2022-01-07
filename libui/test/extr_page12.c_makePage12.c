
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int * half (int ,char*) ;
 int * newHorizontalBox () ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;
 int uiNewMultilineEntry ;
 int uiNewNonWrappingMultilineEntry ;

uiBox *makePage12(void)
{
 uiBox *page12;
 uiBox *b;

 page12 = newHorizontalBox();

 b = half(uiNewMultilineEntry, "wrap");
 uiBoxAppend(page12, uiControl(b), 1);
 b = half(uiNewNonWrappingMultilineEntry, "no wrap");
 uiBoxAppend(page12, uiControl(b), 1);

 return page12;
}
