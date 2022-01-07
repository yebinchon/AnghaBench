
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiCheckbox ;
typedef int uiButton ;
typedef int uiBox ;


 int INT_MAX ;
 int INT_MIN ;
 int borderWindowOpen ;
 int borderless ;
 int * fullscreen ;
 int * height ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int onSize ;
 int setFullscreen ;
 int sizeHeight ;
 int sizeWidth ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiControl (int *) ;
 int * uiNewButton (char*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewLabel (char*) ;
 int * uiNewSpinbox (int ,int ) ;
 int * uiNewVerticalSeparator () ;
 int uiSpinboxOnChanged (int *,int ,int *) ;
 int uiWindowOnContentSizeChanged (int *,int ,int *) ;
 int updatesize (int *) ;
 int * width ;

uiBox *makePage15(uiWindow *w)
{
 uiBox *page15;
 uiBox *hbox;
 uiButton *button;
 uiCheckbox *checkbox;

 page15 = newVerticalBox();

 hbox = newHorizontalBox();
 uiBoxAppend(page15, uiControl(hbox), 0);

 uiBoxAppend(hbox, uiControl(uiNewLabel("Size")), 0);
 width = uiNewSpinbox(INT_MIN, INT_MAX);
 uiBoxAppend(hbox, uiControl(width), 1);
 height = uiNewSpinbox(INT_MIN, INT_MAX);
 uiBoxAppend(hbox, uiControl(height), 1);
 fullscreen = uiNewCheckbox("Fullscreen");
 uiBoxAppend(hbox, uiControl(fullscreen), 0);

 uiSpinboxOnChanged(width, sizeWidth, w);
 uiSpinboxOnChanged(height, sizeHeight, w);
 uiCheckboxOnToggled(fullscreen, setFullscreen, w);
 uiWindowOnContentSizeChanged(w, onSize, ((void*)0));
 updatesize(w);

 checkbox = uiNewCheckbox("Borderless");
 uiCheckboxOnToggled(checkbox, borderless, w);
 uiBoxAppend(page15, uiControl(checkbox), 0);

 button = uiNewButton("Borderless Resizes");
 uiButtonOnClicked(button, borderWindowOpen, ((void*)0));
 uiBoxAppend(page15, uiControl(button), 0);

 hbox = newHorizontalBox();
 uiBoxAppend(page15, uiControl(hbox), 1);

 uiBoxAppend(hbox, uiControl(uiNewVerticalSeparator()), 0);

 return page15;
}
