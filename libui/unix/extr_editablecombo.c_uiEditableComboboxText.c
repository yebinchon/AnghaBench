
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comboboxText; } ;
typedef TYPE_1__ uiEditableCombobox ;


 int g_free (char*) ;
 char* gtk_combo_box_text_get_active_text (int ) ;
 char* uiUnixStrdupText (char*) ;

char *uiEditableComboboxText(uiEditableCombobox *c)
{
 char *s;
 char *out;

 s = gtk_combo_box_text_get_active_text(c->comboboxText);

 out = uiUnixStrdupText(s);
 g_free(s);
 return out;
}
