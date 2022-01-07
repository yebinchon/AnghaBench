
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GtkCellRendererState ;
typedef int GtkCellRenderer ;
typedef int GdkRectangle ;
typedef int GdkEvent ;


 int TRUE ;
 int clickedSignal ;
 int g_signal_emit (int *,int ,int ,int const*) ;

__attribute__((used)) static gboolean cellRendererButton_activate(GtkCellRenderer *r, GdkEvent *e, GtkWidget *widget, const gchar *path, const GdkRectangle *background_area, const GdkRectangle *cell_area, GtkCellRendererState flags)
{
 g_signal_emit(r, clickedSignal, 0, path);
 return TRUE;
}
