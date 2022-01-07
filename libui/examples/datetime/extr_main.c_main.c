
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;
typedef int uiLabel ;
typedef int uiInitOptions ;
typedef int uiGrid ;
typedef int uiButton ;


 int * dtboth ;
 int * dtdate ;
 int * dttime ;
 int fprintf (int ,char*,char const*) ;
 int memset (int *,int ,int) ;
 int onChanged ;
 int onClicked ;
 int onClosing ;
 int stderr ;
 int uiAlignCenter ;
 int uiAlignEnd ;
 int uiAlignFill ;
 int uiButtonOnClicked (int *,int ,void*) ;
 int uiControl (int *) ;
 int uiControlShow (int ) ;
 int uiDateTimePickerOnChanged (int *,int ,int *) ;
 int uiFreeInitError (char const*) ;
 int uiGridAppend (int *,int ,int,int,int,int,int,int ,int,int ) ;
 int uiGridSetPadded (int *,int) ;
 char* uiInit (int *) ;
 int uiMain () ;
 int * uiNewButton (char*) ;
 int * uiNewDatePicker () ;
 int * uiNewDateTimePicker () ;
 int * uiNewGrid () ;
 int * uiNewLabel (char*) ;
 int * uiNewTimePicker () ;
 int * uiNewWindow (char*,int,int,int ) ;
 int uiWindowOnClosing (int *,int ,int *) ;
 int uiWindowSetChild (int *,int ) ;
 int uiWindowSetMargined (int *,int) ;

int main(void)
{
 uiInitOptions o;
 const char *err;
 uiWindow *w;
 uiGrid *g;
 uiLabel *l;
 uiButton *b;

 memset(&o, 0, sizeof (uiInitOptions));
 err = uiInit(&o);
 if (err != ((void*)0)) {
  fprintf(stderr, "error initializing ui: %s\n", err);
  uiFreeInitError(err);
  return 1;
 }

 w = uiNewWindow("Date / Time", 320, 240, 0);
 uiWindowSetMargined(w, 1);

 g = uiNewGrid();
 uiGridSetPadded(g, 1);
 uiWindowSetChild(w, uiControl(g));

 dtboth = uiNewDateTimePicker();
 dtdate = uiNewDatePicker();
 dttime = uiNewTimePicker();

 uiGridAppend(g, uiControl(dtboth),
  0, 0, 2, 1,
  1, uiAlignFill, 0, uiAlignFill);
 uiGridAppend(g, uiControl(dtdate),
  0, 1, 1, 1,
  1, uiAlignFill, 0, uiAlignFill);
 uiGridAppend(g, uiControl(dttime),
  1, 1, 1, 1,
  1, uiAlignFill, 0, uiAlignFill);

 l = uiNewLabel("");
 uiGridAppend(g, uiControl(l),
  0, 2, 2, 1,
  1, uiAlignCenter, 0, uiAlignFill);
 uiDateTimePickerOnChanged(dtboth, onChanged, l);
 l = uiNewLabel("");
 uiGridAppend(g, uiControl(l),
  0, 3, 1, 1,
  1, uiAlignCenter, 0, uiAlignFill);
 uiDateTimePickerOnChanged(dtdate, onChanged, l);
 l = uiNewLabel("");
 uiGridAppend(g, uiControl(l),
  1, 3, 1, 1,
  1, uiAlignCenter, 0, uiAlignFill);
 uiDateTimePickerOnChanged(dttime, onChanged, l);

 b = uiNewButton("Now");
 uiButtonOnClicked(b, onClicked, (void *) 1);
 uiGridAppend(g, uiControl(b),
  0, 4, 1, 1,
  1, uiAlignFill, 1, uiAlignEnd);
 b = uiNewButton("Unix epoch");
 uiButtonOnClicked(b, onClicked, (void *) 0);
 uiGridAppend(g, uiControl(b),
  1, 4, 1, 1,
  1, uiAlignFill, 1, uiAlignEnd);

 uiWindowOnClosing(w, onClosing, ((void*)0));
 uiControlShow(uiControl(w));
 uiMain();
 return 0;
}
