
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pbar; scalar_t__ indeterminate; } ;
typedef TYPE_1__ uiProgressBar ;


 int gtk_progress_bar_get_fraction (int ) ;

int uiProgressBarValue(uiProgressBar *p)
{
 if (p->indeterminate)
  return -1;
 return (int) (gtk_progress_bar_get_fraction(p->pbar) * 100);
}
