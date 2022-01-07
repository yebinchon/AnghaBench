
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct diff_words_style {int newline; int new_word; int old_word; int ctx; } ;
struct TYPE_8__ {TYPE_3__* orig; } ;
struct TYPE_6__ {TYPE_1__* orig; } ;
struct diff_words_data {char const* current_plus; long last_minus; struct diff_options* opt; TYPE_4__ plus; TYPE_2__ minus; struct diff_words_style* style; } ;
struct diff_options {int file; } ;
struct TYPE_7__ {char* begin; char* end; } ;
struct TYPE_5__ {char* begin; char* end; } ;


 int assert (struct diff_options*) ;
 scalar_t__ color_words_output_graph_prefix (struct diff_words_data*) ;
 char* diff_line_prefix (struct diff_options*) ;
 int fn_out_diff_words_write_helper (struct diff_options*,int *,int ,int,char const*) ;
 int fputs (char const*,int ) ;

__attribute__((used)) static void fn_out_diff_words_aux(void *priv,
      long minus_first, long minus_len,
      long plus_first, long plus_len,
      const char *func, long funclen)
{
 struct diff_words_data *diff_words = priv;
 struct diff_words_style *style = diff_words->style;
 const char *minus_begin, *minus_end, *plus_begin, *plus_end;
 struct diff_options *opt = diff_words->opt;
 const char *line_prefix;

 assert(opt);
 line_prefix = diff_line_prefix(opt);


 if (minus_len) {
  minus_begin = diff_words->minus.orig[minus_first].begin;
  minus_end =
   diff_words->minus.orig[minus_first + minus_len - 1].end;
 } else
  minus_begin = minus_end =
   diff_words->minus.orig[minus_first].end;

 if (plus_len) {
  plus_begin = diff_words->plus.orig[plus_first].begin;
  plus_end = diff_words->plus.orig[plus_first + plus_len - 1].end;
 } else
  plus_begin = plus_end = diff_words->plus.orig[plus_first].end;

 if (color_words_output_graph_prefix(diff_words)) {
  fputs(line_prefix, diff_words->opt->file);
 }
 if (diff_words->current_plus != plus_begin) {
  fn_out_diff_words_write_helper(diff_words->opt,
    &style->ctx, style->newline,
    plus_begin - diff_words->current_plus,
    diff_words->current_plus);
 }
 if (minus_begin != minus_end) {
  fn_out_diff_words_write_helper(diff_words->opt,
    &style->old_word, style->newline,
    minus_end - minus_begin, minus_begin);
 }
 if (plus_begin != plus_end) {
  fn_out_diff_words_write_helper(diff_words->opt,
    &style->new_word, style->newline,
    plus_end - plus_begin, plus_begin);
 }

 diff_words->current_plus = plus_end;
 diff_words->last_minus = minus_first;
}
