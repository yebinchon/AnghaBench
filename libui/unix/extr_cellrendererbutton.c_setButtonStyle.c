
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidgetPath ;
typedef int GtkWidget ;
typedef int GtkStyleContext ;


 int GTK_STYLE_CLASS_BUTTON ;
 int GTK_TYPE_BUTTON ;
 int G_TYPE_NONE ;
 int gtk_style_context_add_class (int *,int ) ;
 int gtk_style_context_get_path (int *) ;
 int gtk_style_context_get_state (int *) ;
 int * gtk_style_context_new () ;
 int gtk_style_context_set_parent (int *,int *) ;
 int gtk_style_context_set_path (int *,int *) ;
 int gtk_style_context_set_state (int *,int ) ;
 int * gtk_widget_get_style_context (int *) ;
 int gtk_widget_path_append_type (int *,int ) ;
 int * gtk_widget_path_copy (int ) ;
 int gtk_widget_path_iter_set_object_type (int *,int,int ) ;
 int gtk_widget_path_unref (int *) ;
 int uiprivFUTURE_gtk_widget_path_iter_set_object_name (int *,int,char*) ;

__attribute__((used)) static GtkStyleContext *setButtonStyle(GtkWidget *widget)
{
 GtkStyleContext *base, *context;
 GtkWidgetPath *path;

 base = gtk_widget_get_style_context(widget);
 context = gtk_style_context_new();

 path = gtk_widget_path_copy(gtk_style_context_get_path(base));
 gtk_widget_path_append_type(path, G_TYPE_NONE);
 if (!uiprivFUTURE_gtk_widget_path_iter_set_object_name(path, -1, "button"))

  gtk_widget_path_iter_set_object_type(path, -1, GTK_TYPE_BUTTON);

 gtk_style_context_set_path(context, path);
 gtk_style_context_set_parent(context, base);


 gtk_style_context_set_state(context, gtk_style_context_get_state(base));
 gtk_widget_path_unref(path);


 gtk_style_context_add_class(context, GTK_STYLE_CLASS_BUTTON);

 return context;
}
