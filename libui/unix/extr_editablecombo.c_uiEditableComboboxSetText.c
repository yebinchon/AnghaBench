
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int combobox; int bin; } ;
typedef TYPE_1__ uiEditableCombobox ;
typedef int GtkEntry ;


 int * GTK_ENTRY (int ) ;
 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_bin_get_child (int ) ;
 int gtk_entry_set_text (int *,char const*) ;

void uiEditableComboboxSetText(uiEditableCombobox *c, const char *text)
{
 GtkEntry *e;


 g_signal_handler_block(c->combobox, c->onChangedSignal);

 e = GTK_ENTRY(gtk_bin_get_child(c->bin));
 gtk_entry_set_text(e, text);
 g_signal_handler_unblock(c->combobox, c->onChangedSignal);
}
