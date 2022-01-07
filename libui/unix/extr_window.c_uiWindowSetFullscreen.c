
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fullscreen; int window; } ;
typedef TYPE_1__ uiWindow ;


 int gtk_window_fullscreen (int ) ;
 int gtk_window_unfullscreen (int ) ;

void uiWindowSetFullscreen(uiWindow *w, int fullscreen)
{
 w->fullscreen = fullscreen;
 if (w->fullscreen)
  gtk_window_fullscreen(w->window);
 else
  gtk_window_unfullscreen(w->window);
}
