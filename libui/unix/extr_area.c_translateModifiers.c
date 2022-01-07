
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint ;
typedef int GdkWindow ;
typedef int GdkModifierType ;


 int gdk_keymap_add_virtual_modifiers (int ,int *) ;
 int gdk_keymap_get_for_display (int ) ;
 int gdk_window_get_display (int *) ;

__attribute__((used)) static guint translateModifiers(guint state, GdkWindow *window)
{
 GdkModifierType statetype;


 statetype = state;
 gdk_keymap_add_virtual_modifiers(
  gdk_keymap_get_for_display(gdk_window_get_display(window)),
  &statetype);
 return statetype;
}
