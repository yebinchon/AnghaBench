
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; void* ptr; } ;




 size_t len ;

 TYPE_1__* things ;
 int uiBox (void*) ;
 int uiBoxPadded (int ) ;
 int uiGroup (void*) ;
 int uiGroupMargined (int ) ;
 int uiTab (void*) ;
 int uiTabMargined (int ,size_t) ;
 size_t uiTabNumPages (int ) ;
 int uiWindow (void*) ;
 int uiWindowMargined (int ) ;


void querySpaced(char out[12])
{
 int m = 0;
 int p = 0;
 size_t i;
 void *pp;
 size_t j, n;

 for (i = 0; i < len; i++) {
  pp = things[i].ptr;
  switch (things[i].type) {
  case 128:
   if (uiWindowMargined(uiWindow(pp)))
    m++;
   break;
  case 131:
   p = uiBoxPadded(uiBox(pp));
   break;
  case 129:
   n = uiTabNumPages(uiTab(pp));
   for (j = 0; j < n; j++)
    if (uiTabMargined(uiTab(pp), j))
     m++;
   break;
  case 130:
   if (uiGroupMargined(uiGroup(pp)))
    m++;
   break;


  }
 }

 out[0] = 'm';
 out[1] = ' ';
 out[2] = '0' + m;
 out[3] = ' ';
 out[4] = 'p';
 out[5] = ' ';
 out[6] = '0';
 if (p)
  out[6] = '1';
 out[7] = '\0';
}
