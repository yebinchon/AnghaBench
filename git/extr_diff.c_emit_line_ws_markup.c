
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int* output_indicators; unsigned int ws_error_highlight; int file; } ;


 int DIFF_WHITESPACE ;
 char* diff_get_color_opt (struct diff_options*,int ) ;
 int emit_line_0 (struct diff_options*,char const*,char const*,int,char const*,int,char const*,int) ;
 int ws_check_emit (char const*,int,unsigned int,int ,char const*,char const*,char const*) ;

__attribute__((used)) static void emit_line_ws_markup(struct diff_options *o,
    const char *set_sign, const char *set,
    const char *reset,
    int sign_index, const char *line, int len,
    unsigned ws_rule, int blank_at_eof)
{
 const char *ws = ((void*)0);
 int sign = o->output_indicators[sign_index];

 if (o->ws_error_highlight & ws_rule) {
  ws = diff_get_color_opt(o, DIFF_WHITESPACE);
  if (!*ws)
   ws = ((void*)0);
 }

 if (!ws && !set_sign)
  emit_line_0(o, set, ((void*)0), 0, reset, sign, line, len);
 else if (!ws) {
  emit_line_0(o, set_sign, set, !!set_sign, reset, sign, line, len);
 } else if (blank_at_eof)

  emit_line_0(o, ws, ((void*)0), 0, reset, sign, line, len);
 else {

  emit_line_0(o, set_sign ? set_sign : set, ((void*)0), !!set_sign, reset,
       sign, "", 0);
  ws_check_emit(line, len, ws_rule,
         o->file, set, reset, ws);
 }
}
