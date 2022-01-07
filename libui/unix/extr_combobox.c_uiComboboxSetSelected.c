
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onSelectedSignal; int combobox; } ;
typedef TYPE_1__ uiCombobox ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_combo_box_set_active (int ,int) ;

void uiComboboxSetSelected(uiCombobox *c, int n)
{

 g_signal_handler_block(c->combobox, c->onSelectedSignal);
 gtk_combo_box_set_active(c->combobox, n);
 g_signal_handler_unblock(c->combobox, c->onSelectedSignal);
}
