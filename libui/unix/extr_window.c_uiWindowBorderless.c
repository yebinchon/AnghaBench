
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ uiWindow ;


 scalar_t__ FALSE ;
 scalar_t__ gtk_window_get_decorated (int ) ;

int uiWindowBorderless(uiWindow *w)
{
 return gtk_window_get_decorated(w->window) == FALSE;
}
