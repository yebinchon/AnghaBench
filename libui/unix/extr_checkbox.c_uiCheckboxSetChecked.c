
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onToggledSignal; int toggleButton; } ;
typedef TYPE_1__ uiCheckbox ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_toggle_button_set_active (int ,int ) ;

void uiCheckboxSetChecked(uiCheckbox *c, int checked)
{
 gboolean active;

 active = FALSE;
 if (checked)
  active = TRUE;

 g_signal_handler_block(c->toggleButton, c->onToggledSignal);
 gtk_toggle_button_set_active(c->toggleButton, active);
 g_signal_handler_unblock(c->toggleButton, c->onToggledSignal);
}
