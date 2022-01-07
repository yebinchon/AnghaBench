
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int range; } ;
typedef TYPE_1__ uiSlider ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_range_set_value (int ,int) ;

void uiSliderSetValue(uiSlider *s, int value)
{

 g_signal_handler_block(s->range, s->onChangedSignal);
 gtk_range_set_value(s->range, value);
 g_signal_handler_unblock(s->range, s->onChangedSignal);
}
