
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pbar; int pulser; scalar_t__ indeterminate; } ;
typedef TYPE_1__ uiProgressBar ;
typedef int gdouble ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int g_source_remove (int ) ;
 int g_timeout_add (int,int ,TYPE_1__*) ;
 int gtk_progress_bar_set_fraction (int ,int) ;
 int pulse ;
 int uiprivUserBug (char*,int) ;

void uiProgressBarSetValue(uiProgressBar *p, int value)
{
 if (value == -1) {
  if (!p->indeterminate) {
   p->indeterminate = TRUE;

   p->pulser = g_timeout_add(100, pulse, p);
  }
  return;
 }
 if (p->indeterminate) {
  p->indeterminate = FALSE;
  g_source_remove(p->pulser);
 }

 if (value < 0 || value > 100)
  uiprivUserBug("Value %d is out of range for a uiProgressBar.", value);

 gtk_progress_bar_set_fraction(p->pbar, ((gdouble) value) / 100);
}
