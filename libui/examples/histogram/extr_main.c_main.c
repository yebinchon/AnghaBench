
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiInitOptions ;
struct TYPE_5__ {int A; int B; int G; int R; } ;
typedef TYPE_1__ uiDrawBrush ;
typedef int uiBox ;
struct TYPE_6__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


 int * colorButton ;
 int colorDodgerBlue ;
 int ** datapoints ;
 int fprintf (int ,char*,char const*) ;
 TYPE_2__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * histogram ;
 int * mainwin ;
 int memset (int *,int ,int) ;
 int onClosing ;
 int onColorChanged ;
 int onDatapointChanged ;
 int rand () ;
 int setSolidBrush (TYPE_1__*,int ,double) ;
 int shouldQuit ;
 int srand (int ) ;
 int stderr ;
 int time (int *) ;
 int uiBoxAppend (int *,int ,int) ;
 int uiBoxSetPadded (int *,int) ;
 int uiColorButtonOnChanged (int *,int ,int *) ;
 int uiColorButtonSetColor (int *,int ,int ,int ,int ) ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int uiFreeInitError (char const*) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int * uiNewArea (TYPE_2__*) ;
 int * uiNewColorButton () ;
 int * uiNewHorizontalBox () ;
 int * uiNewSpinbox (int ,int) ;
 int * uiNewVerticalBox () ;
 int * uiNewWindow (char*,int,int,int) ;
 int uiOnShouldQuit (int ,int *) ;
 int uiSpinboxOnChanged (int *,int ,int *) ;
 int uiSpinboxSetValue (int *,int) ;
 int uiUninit () ;
 int uiWindowOnClosing (int *,int ,int *) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

int main(void)
{
 uiInitOptions o;
 const char *err;
 uiBox *hbox, *vbox;
 int i;
 uiDrawBrush brush;

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

 mainwin = uiNewWindow("libui Histogram Example", 640, 480, 1);
 uiWindowSetMargined(mainwin, 1);
 uiWindowOnClosing(mainwin, onClosing, ((void*)0));

 hbox = uiNewHorizontalBox();
 uiBoxSetPadded(hbox, 1);
 uiWindowSetChild(mainwin, uiControl(hbox));

 vbox = uiNewVerticalBox();
 uiBoxSetPadded(vbox, 1);
 uiBoxAppend(hbox, uiControl(vbox), 0);

 srand(time(((void*)0)));
 for (i = 0; i < 10; i++) {
  datapoints[i] = uiNewSpinbox(0, 100);
  uiSpinboxSetValue(datapoints[i], rand() % 101);
  uiSpinboxOnChanged(datapoints[i], onDatapointChanged, ((void*)0));
  uiBoxAppend(vbox, uiControl(datapoints[i]), 0);
 }

 colorButton = uiNewColorButton();

 setSolidBrush(&brush, colorDodgerBlue, 1.0);
 uiColorButtonSetColor(colorButton,
  brush.R,
  brush.G,
  brush.B,
  brush.A);
 uiColorButtonOnChanged(colorButton, onColorChanged, ((void*)0));
 uiBoxAppend(vbox, uiControl(colorButton), 0);

 histogram = uiNewArea(&handler);
 uiBoxAppend(hbox, uiControl(histogram), 1);

 uiControlShow(uiControl(mainwin));
 uiMain();
 uiUninit();
 return 0;
}
