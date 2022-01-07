
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ yyscan_t ;
struct yyguts_t {int yy_did_buffer_switch_on_eof; int yy_n_chars; int * yy_c_buf_p; int yy_hold_char; } ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_5__ {int yy_n_chars; int * yy_buf_pos; } ;


 TYPE_1__* YY_CURRENT_BUFFER ;
 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int yy_load_buffer_state (scalar_t__) ;
 int yyensure_buffer_stack (scalar_t__) ;

void yy_switch_to_buffer (YY_BUFFER_STATE new_buffer , yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;






 yyensure_buffer_stack (yyscanner);
 if ( YY_CURRENT_BUFFER == new_buffer )
  return;

 if ( YY_CURRENT_BUFFER )
  {

  *yyg->yy_c_buf_p = yyg->yy_hold_char;
  YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = yyg->yy_c_buf_p;
  YY_CURRENT_BUFFER_LVALUE->yy_n_chars = yyg->yy_n_chars;
  }

 YY_CURRENT_BUFFER_LVALUE = new_buffer;
 yy_load_buffer_state( yyscanner );






 yyg->yy_did_buffer_switch_on_eof = 1;
}
