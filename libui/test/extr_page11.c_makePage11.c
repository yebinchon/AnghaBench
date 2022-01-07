
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int * newg (char*,int) ;
 int * newt (int) ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;

uiBox *makePage11(void)
{
 uiBox *page11;
 uiBox *ns;
 uiBox *s;

 page11 = newHorizontalBox();

 ns = newVerticalBox();
 uiBoxAppend(ns, uiControl(newg("", 0)), 0);
 uiBoxAppend(ns, uiControl(newg("", 1)), 0);
 uiBoxAppend(ns, uiControl(newg("Group", 0)), 0);
 uiBoxAppend(ns, uiControl(newg("Group", 1)), 0);
 uiBoxAppend(ns, uiControl(newt(0)), 0);
 uiBoxAppend(ns, uiControl(newt(1)), 0);
 uiBoxAppend(page11, uiControl(ns), 1);

 s = newVerticalBox();
 uiBoxAppend(s, uiControl(newg("", 0)), 1);
 uiBoxAppend(s, uiControl(newg("", 1)), 1);
 uiBoxAppend(s, uiControl(newg("Group", 0)), 1);
 uiBoxAppend(s, uiControl(newg("Group", 1)), 1);
 uiBoxAppend(s, uiControl(newt(0)), 1);
 uiBoxAppend(s, uiControl(newt(1)), 1);
 uiBoxAppend(page11, uiControl(s), 1);

 return page11;
}
