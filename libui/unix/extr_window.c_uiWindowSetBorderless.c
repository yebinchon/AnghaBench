
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ uiWindow ;


 int gtk_window_set_decorated (int ,int) ;

void uiWindowSetBorderless(uiWindow *w, int borderless)
{
 gtk_window_set_decorated(w->window, borderless == 0);
}
