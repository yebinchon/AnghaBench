
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comboboxText; } ;
typedef TYPE_1__ uiEditableCombobox ;


 int gtk_combo_box_text_append (int ,int *,char const*) ;

void uiEditableComboboxAppend(uiEditableCombobox *c, const char *text)
{
 gtk_combo_box_text_append(c->comboboxText, ((void*)0), text);
}
