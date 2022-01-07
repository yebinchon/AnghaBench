
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int widget; } ;
typedef TYPE_1__ uiWindow ;
typedef int gint ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_9__ {int width; int height; } ;
typedef TYPE_2__ GtkAllocation ;
typedef int GdkWindow ;
typedef int GdkScreen ;
typedef TYPE_3__ GdkRectangle ;


 int gdk_screen_get_monitor_at_window (int *,int *) ;
 int gdk_screen_get_monitor_workarea (int *,int ,TYPE_3__*) ;
 int * gdk_window_get_screen (int *) ;
 int gtk_widget_get_allocation (int ,TYPE_2__*) ;
 int * gtk_widget_get_window (int ) ;
 int uiWindowSetPosition (TYPE_1__*,int,int) ;

void uiWindowCenter(uiWindow *w)
{
 gint x, y;
 GtkAllocation winalloc;
 GdkWindow *gdkwin;
 GdkScreen *screen;
 GdkRectangle workarea;

 gtk_widget_get_allocation(w->widget, &winalloc);
 gdkwin = gtk_widget_get_window(w->widget);
 screen = gdk_window_get_screen(gdkwin);
 gdk_screen_get_monitor_workarea(screen,
  gdk_screen_get_monitor_at_window(screen, gdkwin),
  &workarea);

 x = (workarea.width - winalloc.width) / 2;
 y = (workarea.height - winalloc.height) / 2;

 uiWindowSetPosition(w, x, y);
}
