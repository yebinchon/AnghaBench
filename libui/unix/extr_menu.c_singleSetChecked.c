
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gulong ;
typedef int gboolean ;
typedef int GtkCheckMenuItem ;


 int g_signal_handler_block (int *,int ) ;
 int g_signal_handler_unblock (int *,int ) ;
 int gtk_check_menu_item_set_active (int *,int ) ;

__attribute__((used)) static void singleSetChecked(GtkCheckMenuItem *menuitem, gboolean checked, gulong signal)
{
 g_signal_handler_block(menuitem, signal);
 gtk_check_menu_item_set_active(menuitem, checked);
 g_signal_handler_unblock(menuitem, signal);
}
