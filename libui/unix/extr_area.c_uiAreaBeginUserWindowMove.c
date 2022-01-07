
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dragevent; int widget; } ;
typedef TYPE_2__ uiArea ;
struct TYPE_4__ {int time; int y_root; int x_root; int button; } ;
typedef int GtkWidget ;


 int GTK_IS_WINDOW (int *) ;
 int GTK_WINDOW (int *) ;
 int * gtk_widget_get_toplevel (int ) ;
 int gtk_widget_is_toplevel (int *) ;
 int gtk_window_begin_move_drag (int ,int ,int ,int ,int ) ;
 int uiprivUserBug (char*) ;

void uiAreaBeginUserWindowMove(uiArea *a)
{
 GtkWidget *toplevel;

 if (a->dragevent == ((void*)0))
  uiprivUserBug("cannot call uiAreaBeginUserWindowMove() outside of a Mouse() with Down != 0");


 toplevel = gtk_widget_get_toplevel(a->widget);
 if (toplevel == ((void*)0)) {

  return;
 }

 if (!gtk_widget_is_toplevel(toplevel)) {

  return;
 }
 if (!GTK_IS_WINDOW(toplevel)) {

  return;
 }
 gtk_window_begin_move_drag(GTK_WINDOW(toplevel),
  a->dragevent->button,
  a->dragevent->x_root,
  a->dragevent->y_root,
  a->dragevent->time);
}
