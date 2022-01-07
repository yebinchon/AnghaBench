
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * box; int widget; } ;
typedef TYPE_1__ uiprivChild ;
typedef int uiControl ;
typedef int GtkWidget ;
typedef int GtkContainer ;


 int GTK_ALIGN_FILL ;
 int GTK_CONTAINER (int *) ;
 int GTK_ORIENTATION_HORIZONTAL ;
 int TRUE ;
 int * gtk_box_new (int ,int ) ;
 int gtk_container_add (int *,int *) ;
 int gtk_widget_set_halign (int ,int ) ;
 int gtk_widget_set_hexpand (int ,int ) ;
 int gtk_widget_set_valign (int ,int ) ;
 int gtk_widget_set_vexpand (int ,int ) ;
 int gtk_widget_show (int *) ;
 int uiprivChildSetMargined (TYPE_1__*,int) ;
 TYPE_1__* uiprivNewChild (int *,int *,int ) ;

uiprivChild *uiprivNewChildWithBox(uiControl *child, uiControl *parent, GtkContainer *parentContainer, int margined)
{
 uiprivChild *c;
 GtkWidget *box;

 if (child == ((void*)0))
  return ((void*)0);
 box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);
 gtk_widget_show(box);
 c = uiprivNewChild(child, parent, GTK_CONTAINER(box));
 gtk_widget_set_hexpand(c->widget, TRUE);
 gtk_widget_set_halign(c->widget, GTK_ALIGN_FILL);
 gtk_widget_set_vexpand(c->widget, TRUE);
 gtk_widget_set_valign(c->widget, GTK_ALIGN_FILL);
 c->box = box;
 gtk_container_add(parentContainer, c->box);
 uiprivChildSetMargined(c, margined);
 return c;
}
