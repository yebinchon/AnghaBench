
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int window; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef scalar_t__ gint ;
struct TYPE_13__ {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;
struct TYPE_12__ {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
struct TYPE_11__ {scalar_t__ width; int height; } ;
typedef TYPE_2__ GtkRequisition ;
typedef TYPE_3__ GtkAllocation ;
typedef int GdkWindow ;
typedef int GdkScreen ;
typedef TYPE_4__ GdkRectangle ;


 scalar_t__ GTK_TEXT_DIR_RTL ;
 int GTK_WIDGET (TYPE_1__*) ;
 int gdk_screen_get_monitor_at_window (int *,int *) ;
 int gdk_screen_get_monitor_workarea (int *,int ,TYPE_4__*) ;
 int gdk_window_get_root_coords (int *,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int gtk_widget_get_allocation (int ,TYPE_3__*) ;
 scalar_t__ gtk_widget_get_direction (int ) ;
 int gtk_widget_get_has_window (int ) ;
 int gtk_widget_get_preferred_size (int ,TYPE_2__*,int *) ;
 int * gtk_widget_get_screen (int ) ;
 int * gtk_widget_get_window (int ) ;

__attribute__((used)) static void allocationToScreen(uiprivDateTimePickerWidget *d, gint *x, gint *y)
{
 GdkWindow *window;
 GtkAllocation a;
 GtkRequisition aWin;
 GdkScreen *screen;
 GdkRectangle workarea;
 int otherY;

 gtk_widget_get_allocation(GTK_WIDGET(d), &a);
 gtk_widget_get_preferred_size(d->window, &aWin, ((void*)0));
 *x = 0;
 *y = 0;
 if (!gtk_widget_get_has_window(GTK_WIDGET(d))) {
  *x = a.x;
  *y = a.y;
 }
 window = gtk_widget_get_window(GTK_WIDGET(d));
 gdk_window_get_root_coords(window, *x, *y, x, y);
 if (gtk_widget_get_direction(GTK_WIDGET(d)) == GTK_TEXT_DIR_RTL)
  *x += a.width - aWin.width;


 screen = gtk_widget_get_screen(GTK_WIDGET(d));
 gdk_screen_get_monitor_workarea(screen,
  gdk_screen_get_monitor_at_window(screen, window),
  &workarea);
 if (*x < workarea.x)
  *x = workarea.x;
 else if (*x + aWin.width > (workarea.x + workarea.width))
  *x = (workarea.x + workarea.width) - aWin.width;


 otherY = *y - aWin.height;
 *y += a.height;

 if (*y + aWin.height >= workarea.y + workarea.height)
  *y = otherY;
}
