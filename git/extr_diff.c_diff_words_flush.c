
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct emitted_diff_symbols {int nr; TYPE_6__* buf; } ;
struct emit_callback {struct diff_options* opt; TYPE_5__* diff_words; } ;
struct diff_options {struct emitted_diff_symbols* emitted_symbols; } ;
struct TYPE_12__ {scalar_t__ line; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_10__ {TYPE_3__ text; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_8__ {TYPE_1__ text; } ;
struct TYPE_11__ {TYPE_4__ plus; TYPE_2__ minus; struct diff_options* opt; } ;


 int append_emitted_diff_symbol (struct diff_options*,TYPE_6__*) ;
 int diff_words_show (TYPE_5__*) ;
 int free (void*) ;

__attribute__((used)) static void diff_words_flush(struct emit_callback *ecbdata)
{
 struct diff_options *wo = ecbdata->diff_words->opt;

 if (ecbdata->diff_words->minus.text.size ||
     ecbdata->diff_words->plus.text.size)
  diff_words_show(ecbdata->diff_words);

 if (wo->emitted_symbols) {
  struct diff_options *o = ecbdata->opt;
  struct emitted_diff_symbols *wol = wo->emitted_symbols;
  int i;





  for (i = 0; i < wol->nr; i++)
   append_emitted_diff_symbol(o, &wol->buf[i]);

  for (i = 0; i < wol->nr; i++)
   free((void *)wol->buf[i].line);

  wol->nr = 0;
 }
}
