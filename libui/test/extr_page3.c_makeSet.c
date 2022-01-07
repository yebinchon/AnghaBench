
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;
typedef int uiBox ;


 int * newhbox () ;
 int * stub1 () ;
 int uiBoxAppend (int *,int ,int) ;
 int uiBoxSetPadded (int *,int) ;
 int uiControl (int *) ;
 int uiControlHide (int ) ;
 int * uiNewButton (char*) ;

__attribute__((used)) static uiBox *makeSet(int omit, int hidden, int stretch)
{
 uiBox *hbox;
 uiButton *buttons[4];



 hbox = (*newhbox)();
 uiBoxSetPadded(hbox, 1);
 if (omit != 0) {
  buttons[0] = uiNewButton("First");
  uiBoxAppend(hbox, uiControl(buttons[0]), stretch);
 }
 if (omit != 1) {
  buttons[1] = uiNewButton("Second");
  uiBoxAppend(hbox, uiControl(buttons[1]), stretch);
 }
 if (omit != 2) {
  buttons[2] = uiNewButton("Third");
  uiBoxAppend(hbox, uiControl(buttons[2]), stretch);
 }
 if (omit != 3) {
  buttons[3] = uiNewButton("Fourth");
  uiBoxAppend(hbox, uiControl(buttons[3]), stretch);
 }
 if (hidden != -1)
  uiControlHide(uiControl(buttons[hidden]));
 return hbox;
}
