
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;
typedef int GtkWidgetPath ;


 int FALSE ;
 int TRUE ;
 int gwpIterSetObjectName (int *,int ,char const*) ;
 int stub1 (int *,int ,char const*) ;

gboolean uiprivFUTURE_gtk_widget_path_iter_set_object_name(GtkWidgetPath *path, gint pos, const char *name)
{
 if (gwpIterSetObjectName == ((void*)0))
  return FALSE;
 (*gwpIterSetObjectName)(path, pos, name);
 return TRUE;
}
