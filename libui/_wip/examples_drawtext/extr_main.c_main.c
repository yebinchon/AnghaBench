
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uiInitOptions ;
struct TYPE_9__ {int panel; int name; } ;
struct TYPE_8__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


 int area ;
 int box ;
 int exampleList ;
 TYPE_2__** examples ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int mainwin ;
 int memset (int *,int ,int) ;
 TYPE_2__* mkAttributesExample () ;
 TYPE_2__* mkBasicExample () ;
 TYPE_2__* mkEmptyStringExample () ;
 TYPE_2__* mkHitTestExample () ;
 int onClosing ;
 int onExampleChanged (int *,int *) ;
 int shouldQuit ;
 int stderr ;
 int uiBoxAppend (int ,int ,int) ;
 int uiComboboxAppend (int ,int ) ;
 int uiComboboxOnSelected (int ,int (*) (int *,int *),int *) ;
 int uiComboboxSetSelected (int ,int ) ;
 int uiControl (int ) ;
 int uiControlHide (int ) ;
 int uiControlShow (int ) ;
 int uiFreeInitError (char const*) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int uiNewArea (TYPE_1__*) ;
 int uiNewCombobox () ;
 int uiNewVerticalBox () ;
 int uiNewWindow (char*,int,int,int) ;
 int uiOnShouldQuit (int ,int *) ;
 int uiUninit () ;
 int uiWindowOnClosing (int ,int ,int *) ;
 int uiWindowSetChild (int ,int ) ;

int main(void)
{
 uiInitOptions o;
 const char *err;
 int n;

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

 mainwin = uiNewWindow("libui Text-Drawing Example", 640, 480, 1);
 uiWindowOnClosing(mainwin, onClosing, ((void*)0));

 box = uiNewVerticalBox();
 uiWindowSetChild(mainwin, uiControl(box));

 exampleList = uiNewCombobox();
 uiBoxAppend(box, uiControl(exampleList), 0);

 area = uiNewArea(&handler);
 uiBoxAppend(box, uiControl(area), 1);

 n = 0;
 examples[n] = mkBasicExample();
 uiComboboxAppend(exampleList, examples[n]->name);
 uiControlHide(examples[n]->panel);
 uiBoxAppend(box, examples[n]->panel, 0);
 n++;
 examples[n] = mkHitTestExample();
 uiComboboxAppend(exampleList, examples[n]->name);
 uiControlHide(examples[n]->panel);
 uiBoxAppend(box, examples[n]->panel, 0);
 n++;
 examples[n] = mkAttributesExample();
 uiComboboxAppend(exampleList, examples[n]->name);
 uiControlHide(examples[n]->panel);
 uiBoxAppend(box, examples[n]->panel, 0);
 n++;
 examples[n] = mkEmptyStringExample();
 uiComboboxAppend(exampleList, examples[n]->name);
 uiControlHide(examples[n]->panel);
 uiBoxAppend(box, examples[n]->panel, 0);
 n++;

 uiComboboxSetSelected(exampleList, 0);
 uiComboboxOnSelected(exampleList, onExampleChanged, ((void*)0));

 onExampleChanged(((void*)0), ((void*)0));

 uiControlShow(uiControl(mainwin));
 uiMain();



 uiUninit();
 return 0;
}
