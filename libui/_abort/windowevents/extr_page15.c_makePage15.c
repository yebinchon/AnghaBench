
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiBox ;


 int INT_MAX ;
 int INT_MIN ;
 int button ;
 int center ;
 int hbox ;
 int moveX ;
 int moveY ;
 int newHorizontalBox () ;
 int onMove ;
 int page15 ;
 int uiBoxAppend (int ,int ,int) ;
 int uiButtonOnClicked (int ,int ,int *) ;
 int uiControl (int ) ;
 int uiNewButton (char*) ;
 int uiNewLabel (char*) ;
 int uiNewSpinbox (int ,int ) ;
 int uiSpinboxOnChanged (int ,int ,int *) ;
 int uiWindowOnPositionChanged (int *,int ,int *) ;
 int updatepos (int *) ;
 int x ;
 int y ;

uiBox *makePage15(uiWindow *w)
{
 hbox = newHorizontalBox();

 uiBoxAppend(page15, uiControl(hbox), 0);

 uiBoxAppend(hbox, uiControl(uiNewLabel("Position")), 0);
 x = uiNewSpinbox(INT_MIN, INT_MAX);
 uiBoxAppend(hbox, uiControl(x), 1);
 y = uiNewSpinbox(INT_MIN, INT_MAX);
 uiBoxAppend(hbox, uiControl(y), 1);
 button = uiNewButton("Center");
 uiBoxAppend(hbox, uiControl(button), 0);

 uiSpinboxOnChanged(x, moveX, w);
 uiSpinboxOnChanged(y, moveY, w);
 uiButtonOnClicked(button, center, w);
 uiWindowOnPositionChanged(w, onMove, ((void*)0));
 updatepos(w);
}
