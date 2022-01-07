
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiInitOptions ;
typedef int uiGrid ;
typedef int uiBox ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


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
 int memset (int *,int ,int) ;
 int * nullFeatures ;
 int onClosing ;
 int onFontChanged ;
 int onNULLToggled ;
 int onTextChanged ;
 int remakeAttrStr () ;
 int shouldQuit ;
 int stderr ;
 int * textEntry ;
 int uiAlignCenter ;
 int uiAlignFill ;
 int uiBoxAppend (int *,int ,int ) ;
 int uiBoxSetPadded (int *,int) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiControlDestroy (int ) ;
 int uiControlShow (int ) ;
 int uiEntryOnChanged (int *,int ,int *) ;
 int uiEntrySetText (int *,char*) ;
 int uiFontButtonOnChanged (int *,int ,int *) ;
 int uiFreeAttributedString (int ) ;
 int uiFreeInitError (char const*) ;
 int uiGridAppend (int *,int ,int,int,int,int,int,int ,int,int ) ;
 int uiGridSetPadded (int *,int) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int * uiNewArea (TYPE_1__*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewEntry () ;
 int * uiNewFontButton () ;
 int * uiNewGrid () ;
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
 uiGrid *grid;
 uiBox *vbox;

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


 mainwin = uiNewWindow("libui OpenType Features Example", 640, 480, 1);
 uiWindowSetMargined(mainwin, 1);
 uiWindowOnClosing(mainwin, onClosing, ((void*)0));

 grid = uiNewGrid();
 uiGridSetPadded(grid, 1);
 uiWindowSetChild(mainwin, uiControl(grid));

 fontButton = uiNewFontButton();
 uiFontButtonOnChanged(fontButton, onFontChanged, ((void*)0));
 uiGridAppend(grid, uiControl(fontButton),
  0, 0, 1, 1,

  0, uiAlignFill, 0, uiAlignCenter);

 textEntry = uiNewEntry();
 uiEntrySetText(textEntry, "afford afire aflight");
 uiEntryOnChanged(textEntry, onTextChanged, ((void*)0));
 uiGridAppend(grid, uiControl(textEntry),
  1, 0, 1, 1,


  1, uiAlignFill, 0, uiAlignCenter);

 vbox = uiNewVerticalBox();
 uiBoxSetPadded(vbox, 1);
 uiGridAppend(grid, uiControl(vbox),
  0, 1, 1, 1,
  0, uiAlignFill, 1, uiAlignFill);

 nullFeatures = uiNewCheckbox("NULL uiOpenTypeFeatures");
 uiCheckboxOnToggled(nullFeatures, onNULLToggled, ((void*)0));
 uiBoxAppend(vbox, uiControl(nullFeatures), 0);




 {
  int x;

  for (x = 0; x < 10; x++)
   uiBoxAppend(vbox, uiControl(uiNewEntry()), 0);
 }



 area = uiNewArea(&handler);
 uiGridAppend(grid, uiControl(area),
  1, 1, 1, 1,
  1, uiAlignFill, 1, uiAlignFill);


 remakeAttrStr();

 uiControlShow(uiControl(mainwin));
 uiMain();

 uiControlDestroy(uiControl(mainwin));
 uiFreeAttributedString(attrstr);
 uiUninit();
 return 0;
}
