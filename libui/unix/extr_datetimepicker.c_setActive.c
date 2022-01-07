
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int toggledSignal; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef int gboolean ;


 int GTK_TOGGLE_BUTTON (TYPE_1__*) ;
 int g_signal_handler_block (TYPE_1__*,int ) ;
 int g_signal_handler_unblock (TYPE_1__*,int ) ;
 int gtk_toggle_button_set_active (int ,int ) ;

__attribute__((used)) static void setActive(uiprivDateTimePickerWidget *d, gboolean active)
{
 g_signal_handler_block(d, d->toggledSignal);
 gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(d), active);
 g_signal_handler_unblock(d, d->toggledSignal);
}
