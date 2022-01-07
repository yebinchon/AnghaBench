
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ changingPosition; int window; } ;
typedef TYPE_1__ uiWindow ;


 scalar_t__ TRUE ;
 int gtk_window_move (int ,int,int) ;
 int uiMainStep (int) ;

void uiWindowSetPosition(uiWindow *w, int x, int y)
{
 w->changingPosition = TRUE;
 gtk_window_move(w->window, x, y);



 while (w->changingPosition)
  if (!uiMainStep(1))
   break;
}
