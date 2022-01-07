
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int children; int stretchygroup; int container; } ;
typedef TYPE_1__ uiForm ;
struct formChild {int oldvalign; int oldvexpand; int oldhalign; int oldhexpand; scalar_t__ stretchy; int c; int label; } ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int TRUE ;
 struct formChild* ctrl (TYPE_1__*,int) ;
 int g_array_remove_index (int ,int) ;
 int gtk_size_group_remove_widget (int ,int *) ;
 int gtk_widget_destroy (int ) ;
 int gtk_widget_set_halign (int *,int ) ;
 int gtk_widget_set_hexpand (int *,int ) ;
 int gtk_widget_set_valign (int *,int ) ;
 int gtk_widget_set_vexpand (int *,int ) ;
 int uiControlHandle (int ) ;
 int uiControlSetParent (int ,int *) ;
 int uiUnixControl (int ) ;
 int uiUnixControlSetContainer (int ,int ,int ) ;

void uiFormDelete(uiForm *f, int index)
{
 struct formChild *fc;
 GtkWidget *widget;

 fc = ctrl(f, index);
 widget = GTK_WIDGET(uiControlHandle(fc->c));

 gtk_widget_destroy(fc->label);

 uiControlSetParent(fc->c, ((void*)0));
 uiUnixControlSetContainer(uiUnixControl(fc->c), f->container, TRUE);

 if (fc->stretchy)
  gtk_size_group_remove_widget(f->stretchygroup, widget);
 gtk_widget_set_hexpand(widget, fc->oldhexpand);
 gtk_widget_set_halign(widget, fc->oldhalign);
 gtk_widget_set_vexpand(widget, fc->oldvexpand);
 gtk_widget_set_valign(widget, fc->oldvalign);

 g_array_remove_index(f->children, index);
}
