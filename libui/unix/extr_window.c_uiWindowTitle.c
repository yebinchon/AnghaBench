
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ uiWindow ;


 int gtk_window_get_title (int ) ;
 char* uiUnixStrdupText (int ) ;

char *uiWindowTitle(uiWindow *w)
{
 return uiUnixStrdupText(gtk_window_get_title(w->window));
}
