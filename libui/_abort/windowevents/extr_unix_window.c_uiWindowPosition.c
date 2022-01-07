
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ uiWindow ;
typedef int gint ;


 int gtk_window_get_position (int ,int*,int*) ;

void uiWindowPosition(uiWindow *w, int *x, int *y)
{
 gint rx, ry;

 gtk_window_get_position(w->window, &rx, &ry);
 *x = rx;
 *y = ry;
}
