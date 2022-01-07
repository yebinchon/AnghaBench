
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * window; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef int gint ;
typedef int GtkWidget ;


 scalar_t__ GTK_IS_WINDOW (int *) ;
 int GTK_WIDGET (TYPE_1__*) ;
 int GTK_WINDOW (int *) ;
 int TRUE ;
 int allocationToScreen (TYPE_1__*,int *,int *) ;
 int * gtk_widget_get_toplevel (int ) ;
 int gtk_widget_show (int *) ;
 int gtk_window_get_group (int ) ;
 int gtk_window_group_add_window (int ,int ) ;
 int gtk_window_move (int ,int ,int ) ;
 int hidePopup (TYPE_1__*) ;
 int setActive (TYPE_1__*,int ) ;
 int startGrab (TYPE_1__*) ;

__attribute__((used)) static void showPopup(uiprivDateTimePickerWidget *d)
{
 GtkWidget *toplevel;
 gint x, y;


 toplevel = gtk_widget_get_toplevel(GTK_WIDGET(d));
 if (GTK_IS_WINDOW(toplevel))
  gtk_window_group_add_window(gtk_window_get_group(GTK_WINDOW(toplevel)), GTK_WINDOW(d->window));

 allocationToScreen(d, &x, &y);
 gtk_window_move(GTK_WINDOW(d->window), x, y);

 gtk_widget_show(d->window);
 setActive(d, TRUE);

 if (!startGrab(d))
  hidePopup(d);
}
