
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checked; int windows; } ;
typedef TYPE_1__ uiMenuItem ;
struct menuItemWindow {int signal; } ;
typedef scalar_t__ gpointer ;
typedef int gboolean ;
typedef int GHashTableIter ;


 int GTK_CHECK_MENU_ITEM (scalar_t__) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,scalar_t__*,scalar_t__*) ;
 int singleSetChecked (int ,int ,int ) ;

__attribute__((used)) static void setChecked(uiMenuItem *item, gboolean checked)
{
 GHashTableIter iter;
 gpointer widget;
 gpointer ww;
 struct menuItemWindow *w;

 item->checked = checked;
 g_hash_table_iter_init(&iter, item->windows);
 while (g_hash_table_iter_next(&iter, &widget, &ww)) {
  w = (struct menuItemWindow *) ww;
  singleSetChecked(GTK_CHECK_MENU_ITEM(widget), item->checked, w->signal);
 }
}
