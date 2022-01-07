
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct emit_callback {char** label_path; int lno_in_preimage; int lno_in_postimage; TYPE_1__* diff_words; TYPE_2__* header; struct diff_options* opt; } ;
struct diff_options {int found_changes; } ;
typedef enum diff_symbol { ____Placeholder_diff_symbol } diff_symbol ;
struct TYPE_4__ {char* buf; unsigned long len; } ;
struct TYPE_3__ {scalar_t__ type; int plus; int minus; } ;


 int DIFF_SYMBOL_CONTEXT_INCOMPLETE ;
 int DIFF_SYMBOL_FILEPAIR_MINUS ;
 int DIFF_SYMBOL_FILEPAIR_PLUS ;
 int DIFF_SYMBOL_HEADER ;
 int DIFF_SYMBOL_WORDS ;
 int DIFF_SYMBOL_WORDS_PORCELAIN ;
 scalar_t__ DIFF_WORDS_PORCELAIN ;
 scalar_t__ diff_suppress_blank_empty ;
 int diff_words_append (char*,unsigned long,int *) ;
 int diff_words_flush (struct emit_callback*) ;
 int emit_add_line (struct emit_callback*,char*,unsigned long) ;
 int emit_context_line (struct emit_callback*,char*,unsigned long) ;
 int emit_del_line (struct emit_callback*,char*,unsigned long) ;
 int emit_diff_symbol (struct diff_options*,int,char*,unsigned long,int ) ;
 int emit_hunk_header (struct emit_callback*,char*,unsigned long) ;
 int find_lno (char*,struct emit_callback*) ;
 unsigned long sane_truncate_line (char*,unsigned long) ;
 scalar_t__ starts_with (char*,char*) ;
 int strbuf_reset (TYPE_2__*) ;
 unsigned long strlen (char*) ;

__attribute__((used)) static void fn_out_consume(void *priv, char *line, unsigned long len)
{
 struct emit_callback *ecbdata = priv;
 struct diff_options *o = ecbdata->opt;

 o->found_changes = 1;

 if (ecbdata->header) {
  emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
     ecbdata->header->buf, ecbdata->header->len, 0);
  strbuf_reset(ecbdata->header);
  ecbdata->header = ((void*)0);
 }

 if (ecbdata->label_path[0]) {
  emit_diff_symbol(o, DIFF_SYMBOL_FILEPAIR_MINUS,
     ecbdata->label_path[0],
     strlen(ecbdata->label_path[0]), 0);
  emit_diff_symbol(o, DIFF_SYMBOL_FILEPAIR_PLUS,
     ecbdata->label_path[1],
     strlen(ecbdata->label_path[1]), 0);
  ecbdata->label_path[0] = ecbdata->label_path[1] = ((void*)0);
 }

 if (diff_suppress_blank_empty
     && len == 2 && line[0] == ' ' && line[1] == '\n') {
  line[0] = '\n';
  len = 1;
 }

 if (line[0] == '@') {
  if (ecbdata->diff_words)
   diff_words_flush(ecbdata);
  len = sane_truncate_line(line, len);
  find_lno(line, ecbdata);
  emit_hunk_header(ecbdata, line, len);
  return;
 }

 if (ecbdata->diff_words) {
  enum diff_symbol s =
   ecbdata->diff_words->type == DIFF_WORDS_PORCELAIN ?
   DIFF_SYMBOL_WORDS_PORCELAIN : DIFF_SYMBOL_WORDS;
  if (line[0] == '-') {
   diff_words_append(line, len,
       &ecbdata->diff_words->minus);
   return;
  } else if (line[0] == '+') {
   diff_words_append(line, len,
       &ecbdata->diff_words->plus);
   return;
  } else if (starts_with(line, "\\ ")) {







   return;
  }
  diff_words_flush(ecbdata);
  emit_diff_symbol(o, s, line, len, 0);
  return;
 }

 switch (line[0]) {
 case '+':
  ecbdata->lno_in_postimage++;
  emit_add_line(ecbdata, line + 1, len - 1);
  break;
 case '-':
  ecbdata->lno_in_preimage++;
  emit_del_line(ecbdata, line + 1, len - 1);
  break;
 case ' ':
  ecbdata->lno_in_postimage++;
  ecbdata->lno_in_preimage++;
  emit_context_line(ecbdata, line + 1, len - 1);
  break;
 default:

  ecbdata->lno_in_preimage++;
  emit_diff_symbol(o, DIFF_SYMBOL_CONTEXT_INCOMPLETE,
     line, len, 0);
  break;
 }
}
