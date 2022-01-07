
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * yyscan_t ;
struct yyguts_t {int * yy_start_stack; int * yy_buffer_stack; } ;


 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int yy_delete_buffer (scalar_t__,int *) ;
 int yy_init_globals (int *) ;
 int yyfree (int *,int *) ;
 int yypop_buffer_state (int *) ;

int yylex_destroy (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;


 while(YY_CURRENT_BUFFER){
  yy_delete_buffer( YY_CURRENT_BUFFER , yyscanner );
  YY_CURRENT_BUFFER_LVALUE = ((void*)0);
  yypop_buffer_state(yyscanner);
 }


 yyfree(yyg->yy_buffer_stack , yyscanner);
 yyg->yy_buffer_stack = ((void*)0);


        yyfree( yyg->yy_start_stack , yyscanner );
        yyg->yy_start_stack = ((void*)0);



    yy_init_globals( yyscanner);


    yyfree ( yyscanner , yyscanner );
    yyscanner = ((void*)0);
    return 0;
}
