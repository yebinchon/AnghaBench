
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {scalar_t__ yy_buffer_stack_top; int yy_did_buffer_switch_on_eof; } ;


 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int yy_delete_buffer (scalar_t__,scalar_t__) ;
 int yy_load_buffer_state (scalar_t__) ;

void yypop_buffer_state (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
 if (!YY_CURRENT_BUFFER)
  return;

 yy_delete_buffer(YY_CURRENT_BUFFER , yyscanner);
 YY_CURRENT_BUFFER_LVALUE = ((void*)0);
 if (yyg->yy_buffer_stack_top > 0)
  --yyg->yy_buffer_stack_top;

 if (YY_CURRENT_BUFFER) {
  yy_load_buffer_state( yyscanner );
  yyg->yy_did_buffer_switch_on_eof = 1;
 }
}
