
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiControl ;
typedef size_t uiAlign ;
struct gridChild {int oldvalign; int oldvexpand; int oldhalign; int oldhexpand; int * c; } ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int * gtkAligns ;
 int gtk_widget_get_halign (int *) ;
 int gtk_widget_get_hexpand (int *) ;
 int gtk_widget_get_valign (int *) ;
 int gtk_widget_get_vexpand (int *) ;
 int gtk_widget_set_halign (int *,int ) ;
 int gtk_widget_set_hexpand (int *,int) ;
 int gtk_widget_set_valign (int *,int ) ;
 int gtk_widget_set_vexpand (int *,int) ;
 int uiControlHandle (int *) ;

__attribute__((used)) static GtkWidget *prepare(struct gridChild *gc, uiControl *c, int hexpand, uiAlign halign, int vexpand, uiAlign valign)
{
 GtkWidget *widget;

 gc->c = c;
 widget = GTK_WIDGET(uiControlHandle(gc->c));
 gc->oldhexpand = gtk_widget_get_hexpand(widget);
 gc->oldhalign = gtk_widget_get_halign(widget);
 gc->oldvexpand = gtk_widget_get_vexpand(widget);
 gc->oldvalign = gtk_widget_get_valign(widget);
 gtk_widget_set_hexpand(widget, hexpand != 0);
 gtk_widget_set_halign(widget, gtkAligns[halign]);
 gtk_widget_set_vexpand(widget, vexpand != 0);
 gtk_widget_set_valign(widget, gtkAligns[valign]);
 return widget;
}
