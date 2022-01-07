
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int textbuf; } ;
typedef TYPE_1__ uiMultilineEntry ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_text_buffer_set_text (int ,char const*,int) ;

void uiMultilineEntrySetText(uiMultilineEntry *e, const char *text)
{

 g_signal_handler_block(e->textbuf, e->onChangedSignal);
 gtk_text_buffer_set_text(e->textbuf, text, -1);
 g_signal_handler_unblock(e->textbuf, e->onChangedSignal);
}
