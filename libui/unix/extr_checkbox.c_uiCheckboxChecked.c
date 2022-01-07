
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int toggleButton; } ;
typedef TYPE_1__ uiCheckbox ;


 scalar_t__ FALSE ;
 scalar_t__ gtk_toggle_button_get_active (int ) ;

int uiCheckboxChecked(uiCheckbox *c)
{
 return gtk_toggle_button_get_active(c->toggleButton) != FALSE;
}
