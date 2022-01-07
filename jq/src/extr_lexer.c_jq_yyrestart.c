
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {int dummy; } ;
typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int YY_CURRENT_BUFFER_LVALUE ;
 int yy_create_buffer (int ,int ,scalar_t__) ;
 int yy_init_buffer (int ,int *,scalar_t__) ;
 int yy_load_buffer_state (scalar_t__) ;
 int yyensure_buffer_stack (scalar_t__) ;
 int yyin ;

void yyrestart (FILE * input_file , yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;

 if ( ! YY_CURRENT_BUFFER ){
        yyensure_buffer_stack (yyscanner);
  YY_CURRENT_BUFFER_LVALUE =
            yy_create_buffer( yyin, YY_BUF_SIZE , yyscanner);
 }

 yy_init_buffer( YY_CURRENT_BUFFER, input_file , yyscanner);
 yy_load_buffer_state( yyscanner );
}
