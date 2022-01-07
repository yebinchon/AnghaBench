
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spinButton; } ;
typedef TYPE_1__ uiSpinbox ;


 int gtk_spin_button_get_value (int ) ;

int uiSpinboxValue(uiSpinbox *s)
{
 return gtk_spin_button_get_value(s->spinButton);
}
