
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int editable; int entry; } ;
typedef TYPE_1__ uiEntry ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_entry_set_text (int ,char const*) ;

void uiEntrySetText(uiEntry *e, const char *text)
{

 g_signal_handler_block(e->editable, e->onChangedSignal);
 gtk_entry_set_text(e->entry, text);
 g_signal_handler_unblock(e->editable, e->onChangedSignal);

}
