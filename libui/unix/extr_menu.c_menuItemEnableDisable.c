
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disabled; int windows; } ;
typedef TYPE_1__ uiMenuItem ;
typedef int gpointer ;
typedef int gboolean ;
typedef int GHashTableIter ;


 int GTK_WIDGET (int ) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,int *,int *) ;
 int gtk_widget_set_sensitive (int ,int ) ;

__attribute__((used)) static void menuItemEnableDisable(uiMenuItem *item, gboolean enabled)
{
 GHashTableIter iter;
 gpointer widget;

 item->disabled = !enabled;
 g_hash_table_iter_init(&iter, item->windows);
 while (g_hash_table_iter_next(&iter, &widget, ((void*)0)))
  gtk_widget_set_sensitive(GTK_WIDGET(widget), enabled);
}
