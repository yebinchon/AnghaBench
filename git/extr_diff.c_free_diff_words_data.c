
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct emit_callback {TYPE_7__* diff_words; } ;
struct TYPE_10__ {TYPE_5__* ptr; } ;
struct TYPE_11__ {TYPE_5__* orig; TYPE_3__ text; } ;
struct TYPE_8__ {TYPE_5__* ptr; } ;
struct TYPE_9__ {TYPE_5__* orig; TYPE_1__ text; } ;
struct TYPE_13__ {TYPE_5__* word_regex; TYPE_4__ plus; TYPE_2__ minus; TYPE_5__* opt; } ;
struct TYPE_12__ {struct TYPE_12__* emitted_symbols; } ;


 int FREE_AND_NULL (TYPE_7__*) ;
 int diff_words_flush (struct emit_callback*) ;
 int free (TYPE_5__*) ;
 int regfree (TYPE_5__*) ;

__attribute__((used)) static void free_diff_words_data(struct emit_callback *ecbdata)
{
 if (ecbdata->diff_words) {
  diff_words_flush(ecbdata);
  free (ecbdata->diff_words->opt->emitted_symbols);
  free (ecbdata->diff_words->opt);
  free (ecbdata->diff_words->minus.text.ptr);
  free (ecbdata->diff_words->minus.orig);
  free (ecbdata->diff_words->plus.text.ptr);
  free (ecbdata->diff_words->plus.orig);
  if (ecbdata->diff_words->word_regex) {
   regfree(ecbdata->diff_words->word_regex);
   free(ecbdata->diff_words->word_regex);
  }
  FREE_AND_NULL(ecbdata->diff_words);
 }
}
