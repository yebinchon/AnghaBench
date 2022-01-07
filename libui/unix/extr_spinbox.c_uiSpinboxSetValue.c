
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int spinButton; } ;
typedef TYPE_1__ uiSpinbox ;
typedef int gdouble ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_spin_button_set_value (int ,int ) ;

void uiSpinboxSetValue(uiSpinbox *s, int value)
{

 g_signal_handler_block(s->spinButton, s->onChangedSignal);

 gtk_spin_button_set_value(s->spinButton, (gdouble) value);
 g_signal_handler_unblock(s->spinButton, s->onChangedSignal);
}
