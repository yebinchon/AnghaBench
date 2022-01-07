
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiGroup ;
typedef int uiBox ;


 int * makePage7a () ;
 int * makePage7b () ;
 int * makePage7c () ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;

uiBox *makePage7(void)
{
 uiBox *page7;
 uiGroup *group;
 uiBox *box2;

 page7 = newHorizontalBox();

 group = makePage7a();
 uiBoxAppend(page7, uiControl(group), 1);

 box2 = newVerticalBox();
 uiBoxAppend(page7, uiControl(box2), 1);

 group = makePage7b();
 uiBoxAppend(box2, uiControl(group), 1);

 group = makePage7c();
 uiBoxAppend(box2, uiControl(group), 1);

 return page7;
}
