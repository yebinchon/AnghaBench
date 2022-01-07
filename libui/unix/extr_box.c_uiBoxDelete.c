
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int controls; int stretchygroup; int container; } ;
typedef TYPE_1__ uiBox ;
struct boxChild {int oldvalign; int oldvexpand; int oldhalign; int oldhexpand; scalar_t__ stretchy; int c; } ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int TRUE ;
 struct boxChild* ctrl (TYPE_1__*,int) ;
 int g_array_remove_index (int ,int) ;
 int gtk_size_group_remove_widget (int ,int *) ;
 int gtk_widget_set_halign (int *,int ) ;
 int gtk_widget_set_hexpand (int *,int ) ;
 int gtk_widget_set_valign (int *,int ) ;
 int gtk_widget_set_vexpand (int *,int ) ;
 int uiControlHandle (int ) ;
 int uiControlSetParent (int ,int *) ;
 int uiUnixControl (int ) ;
 int uiUnixControlSetContainer (int ,int ,int ) ;

void uiBoxDelete(uiBox *b, int index)
{
 struct boxChild *bc;
 GtkWidget *widget;

 bc = ctrl(b, index);
 widget = GTK_WIDGET(uiControlHandle(bc->c));

 uiControlSetParent(bc->c, ((void*)0));
 uiUnixControlSetContainer(uiUnixControl(bc->c), b->container, TRUE);

 if (bc->stretchy)
  gtk_size_group_remove_widget(b->stretchygroup, widget);
 gtk_widget_set_hexpand(widget, bc->oldhexpand);
 gtk_widget_set_halign(widget, bc->oldhalign);
 gtk_widget_set_vexpand(widget, bc->oldvexpand);
 gtk_widget_set_valign(widget, bc->oldvalign);

 g_array_remove_index(b->controls, index);
}
