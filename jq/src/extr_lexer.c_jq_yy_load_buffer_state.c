
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ yyscan_t ;
struct yyguts_t {int * yy_c_buf_p; int yy_hold_char; int * yytext_ptr; int yy_n_chars; } ;
struct TYPE_2__ {int yy_input_file; int * yy_buf_pos; int yy_n_chars; } ;


 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int yyin ;

__attribute__((used)) static void yy_load_buffer_state (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
 yyg->yy_n_chars = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
 yyg->yytext_ptr = yyg->yy_c_buf_p = YY_CURRENT_BUFFER_LVALUE->yy_buf_pos;
 yyin = YY_CURRENT_BUFFER_LVALUE->yy_input_file;
 yyg->yy_hold_char = *yyg->yy_c_buf_p;
}
