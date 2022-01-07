
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ ctxlen; scalar_t__ flags; } ;
typedef TYPE_2__ xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef TYPE_2__ xdemitconf_t ;
struct diff_words_style {int newline; int ctx; int old_word; } ;
struct TYPE_13__ {scalar_t__ size; scalar_t__ ptr; } ;
struct TYPE_12__ {TYPE_1__ text; } ;
struct diff_words_data {scalar_t__ current_plus; TYPE_10__ plus; TYPE_10__ minus; struct diff_options* opt; int word_regex; scalar_t__ last_minus; struct diff_words_style* style; } ;
struct diff_options {int dummy; } ;
struct TYPE_15__ {int ptr; } ;
typedef TYPE_4__ mmfile_t ;


 int DIFF_SYMBOL_WORD_DIFF ;
 int assert (struct diff_options*) ;
 scalar_t__ color_words_output_graph_prefix (struct diff_words_data*) ;
 int die (char*) ;
 char* diff_line_prefix (struct diff_options*) ;
 int diff_words_fill (TYPE_10__*,TYPE_4__*,int ) ;
 int emit_diff_symbol (struct diff_options*,int ,char const*,int ,int ) ;
 int fn_out_diff_words_aux ;
 int fn_out_diff_words_write_helper (struct diff_options*,int *,int ,scalar_t__,scalar_t__) ;
 int free (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int strlen (char const*) ;
 scalar_t__ xdi_diff_outf (TYPE_4__*,TYPE_4__*,int ,int *,struct diff_words_data*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void diff_words_show(struct diff_words_data *diff_words)
{
 xpparam_t xpp;
 xdemitconf_t xecfg;
 mmfile_t minus, plus;
 struct diff_words_style *style = diff_words->style;

 struct diff_options *opt = diff_words->opt;
 const char *line_prefix;

 assert(opt);
 line_prefix = diff_line_prefix(opt);


 if (!diff_words->plus.text.size) {
  emit_diff_symbol(diff_words->opt, DIFF_SYMBOL_WORD_DIFF,
     line_prefix, strlen(line_prefix), 0);
  fn_out_diff_words_write_helper(diff_words->opt,
   &style->old_word, style->newline,
   diff_words->minus.text.size,
   diff_words->minus.text.ptr);
  diff_words->minus.text.size = 0;
  return;
 }

 diff_words->current_plus = diff_words->plus.text.ptr;
 diff_words->last_minus = 0;

 memset(&xpp, 0, sizeof(xpp));
 memset(&xecfg, 0, sizeof(xecfg));
 diff_words_fill(&diff_words->minus, &minus, diff_words->word_regex);
 diff_words_fill(&diff_words->plus, &plus, diff_words->word_regex);
 xpp.flags = 0;

 xecfg.ctxlen = 0;
 if (xdi_diff_outf(&minus, &plus, fn_out_diff_words_aux, ((void*)0),
     diff_words, &xpp, &xecfg))
  die("unable to generate word diff");
 free(minus.ptr);
 free(plus.ptr);
 if (diff_words->current_plus != diff_words->plus.text.ptr +
   diff_words->plus.text.size) {
  if (color_words_output_graph_prefix(diff_words))
   emit_diff_symbol(diff_words->opt, DIFF_SYMBOL_WORD_DIFF,
      line_prefix, strlen(line_prefix), 0);
  fn_out_diff_words_write_helper(diff_words->opt,
   &style->ctx, style->newline,
   diff_words->plus.text.ptr + diff_words->plus.text.size
   - diff_words->current_plus, diff_words->current_plus);
 }
 diff_words->minus.text.size = diff_words->plus.text.size = 0;
}
