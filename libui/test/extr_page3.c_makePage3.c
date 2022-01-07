
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int * makeSet (int,int,int) ;
 int * newVerticalBox () ;
 int * newhbox () ;
 int * newvbox () ;
 int * stub1 () ;
 int * stub2 () ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;
 int * uiNewButton (char*) ;

uiBox *makePage3(void)
{
 uiBox *page3;
 uiBox *hbox;
 uiBox *hbox2;
 uiBox *vbox;
 int hidden;

 page3 = newVerticalBox();


 for (hidden = 0; hidden < 4; hidden++) {

  hbox2 = (*newhbox)();
  vbox = (*newvbox)();

  hbox = makeSet(hidden, -1, 0);
  uiBoxAppend(vbox, uiControl(hbox), 0);

  hbox = makeSet(-1, hidden, 0);
  uiBoxAppend(vbox, uiControl(hbox), 0);

  uiBoxAppend(hbox2, uiControl(vbox), 0);

  uiBoxAppend(hbox2, uiControl(uiNewButton("Right Margin Test")), 1);
  uiBoxAppend(page3, uiControl(hbox2), 0);
 }


 for (hidden = 0; hidden < 4; hidden++) {
  hbox = makeSet(-1, hidden, 1);
  uiBoxAppend(page3, uiControl(hbox), 0);
 }

 return page3;
}
