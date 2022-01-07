
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiInitOptions ;
typedef int uiForm ;
typedef int uiBox ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


 int * alignment ;
 int * area ;
 int attrstr ;
 int * fontButton ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * mainwin ;
 int makeAttributedString () ;
 int memset (int *,int ,int) ;
 int onClosing ;
 int onComboboxSelected ;
 int onFontChanged ;
 int shouldQuit ;
 int stderr ;
 int uiBoxAppend (int *,int ,int) ;
 int uiBoxSetPadded (int *,int) ;
 int uiComboboxAppend (int *,char*) ;
 int uiComboboxOnSelected (int *,int ,int *) ;
 int uiComboboxSetSelected (int *,int ) ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int uiFontButtonOnChanged (int *,int ,int *) ;
 int uiFormAppend (int *,char*,int ,int ) ;
 int uiFormSetPadded (int *,int) ;
 int uiFreeAttributedString (int ) ;
 int uiFreeInitError (char const*) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int * uiNewArea (TYPE_1__*) ;
 int * uiNewCombobox () ;
 int * uiNewFontButton () ;
 int * uiNewForm () ;
 int * uiNewHorizontalBox () ;
 int * uiNewVerticalBox () ;
 int * uiNewWindow (char*,int,int,int) ;
 int uiOnShouldQuit (int ,int *) ;
 int uiUninit () ;
 int uiWindowOnClosing (int *,int ,int *) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

int main(void)
{
 uiInitOptions o;
 const char *err;
 uiBox *hbox, *vbox;
 uiForm *form;

 handler.Draw = handlerDraw;
 handler.MouseEvent = handlerMouseEvent;
 handler.MouseCrossed = handlerMouseCrossed;
 handler.DragBroken = handlerDragBroken;
 handler.KeyEvent = handlerKeyEvent;

 memset(&o, 0, sizeof (uiInitOptions));
 err = uiInit(&o);
 if (err != ((void*)0)) {
  fprintf(stderr, "error initializing ui: %s\n", err);
  uiFreeInitError(err);
  return 1;
 }

 uiOnShouldQuit(shouldQuit, ((void*)0));

 makeAttributedString();

 mainwin = uiNewWindow("libui Text-Drawing Example", 640, 480, 1);
 uiWindowSetMargined(mainwin, 1);
 uiWindowOnClosing(mainwin, onClosing, ((void*)0));

 hbox = uiNewHorizontalBox();
 uiBoxSetPadded(hbox, 1);
 uiWindowSetChild(mainwin, uiControl(hbox));

 vbox = uiNewVerticalBox();
 uiBoxSetPadded(vbox, 1);
 uiBoxAppend(hbox, uiControl(vbox), 0);

 fontButton = uiNewFontButton();
 uiFontButtonOnChanged(fontButton, onFontChanged, ((void*)0));
 uiBoxAppend(vbox, uiControl(fontButton), 0);

 form = uiNewForm();
 uiFormSetPadded(form, 1);

 uiBoxAppend(vbox, uiControl(form), 0);

 alignment = uiNewCombobox();

 uiComboboxAppend(alignment, "Left");
 uiComboboxAppend(alignment, "Center");
 uiComboboxAppend(alignment, "Right");
 uiComboboxSetSelected(alignment, 0);
 uiComboboxOnSelected(alignment, onComboboxSelected, ((void*)0));
 uiFormAppend(form, "Alignment", uiControl(alignment), 0);

 area = uiNewArea(&handler);
 uiBoxAppend(hbox, uiControl(area), 1);

 uiControlShow(uiControl(mainwin));
 uiMain();
 uiFreeAttributedString(attrstr);
 uiUninit();
 return 0;
}
