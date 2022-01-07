
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; void* ptr; } ;






 size_t len ;

 TYPE_1__* things ;
 int uiBox (void*) ;
 int uiBoxSetPadded (int ,int) ;
 int uiForm (void*) ;
 int uiFormSetPadded (int ,int) ;
 int uiGrid (void*) ;
 int uiGridSetPadded (int ,int) ;
 int uiGroup (void*) ;
 int uiGroupSetMargined (int ,int) ;
 int uiTab (void*) ;
 size_t uiTabNumPages (int ) ;
 int uiTabSetMargined (int ,size_t,int) ;
 int uiWindow (void*) ;
 int uiWindowSetMargined (int ,int) ;


void setSpaced(int spaced)
{
 size_t i;
 void *p;
 size_t j, n;

 for (i = 0; i < len; i++) {
  p = things[i].ptr;
  switch (things[i].type) {
  case 128:
   uiWindowSetMargined(uiWindow(p), spaced);
   break;
  case 133:
   uiBoxSetPadded(uiBox(p), spaced);
   break;
  case 129:
   n = uiTabNumPages(uiTab(p));
   for (j = 0; j < n; j++)
    uiTabSetMargined(uiTab(p), j, spaced);
   break;
  case 130:
   uiGroupSetMargined(uiGroup(p), spaced);
   break;
  case 132:
   uiFormSetPadded(uiForm(p), spaced);
   break;
  case 131:
   uiGridSetPadded(uiGrid(p), spaced);
   break;
  }
 }
}
