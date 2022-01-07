
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int textbuf; } ;
typedef TYPE_1__ uiMultilineEntry ;
typedef int GtkTextIter ;


 int TRUE ;
 int g_free (char*) ;
 int gtk_text_buffer_get_end_iter (int ,int *) ;
 int gtk_text_buffer_get_start_iter (int ,int *) ;
 char* gtk_text_buffer_get_text (int ,int *,int *,int ) ;
 char* uiUnixStrdupText (char*) ;

char *uiMultilineEntryText(uiMultilineEntry *e)
{
 GtkTextIter start, end;
 char *tret, *out;

 gtk_text_buffer_get_start_iter(e->textbuf, &start);
 gtk_text_buffer_get_end_iter(e->textbuf, &end);
 tret = gtk_text_buffer_get_text(e->textbuf, &start, &end, TRUE);

 out = uiUnixStrdupText(tret);
 g_free(tret);
 return out;
}
