
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int onChangedSignal; int textbuf; } ;
typedef TYPE_1__ uiMultilineEntry ;
typedef int GtkTextIter ;


 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_text_buffer_get_end_iter (int ,int *) ;
 int gtk_text_buffer_insert (int ,int *,char const*,int) ;

void uiMultilineEntryAppend(uiMultilineEntry *e, const char *text)
{
 GtkTextIter end;

 gtk_text_buffer_get_end_iter(e->textbuf, &end);

 g_signal_handler_block(e->textbuf, e->onChangedSignal);
 gtk_text_buffer_insert(e->textbuf, &end, text, -1);
 g_signal_handler_unblock(e->textbuf, e->onChangedSignal);
}
