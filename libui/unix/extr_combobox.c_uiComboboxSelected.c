
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int combobox; } ;
typedef TYPE_1__ uiCombobox ;


 int gtk_combo_box_get_active (int ) ;

int uiComboboxSelected(uiCombobox *c)
{
 return gtk_combo_box_get_active(c->combobox);
}
