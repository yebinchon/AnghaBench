
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {int * yy_start_stack; scalar_t__ yy_start_stack_depth; scalar_t__ yy_start_stack_ptr; scalar_t__ yy_start; scalar_t__ yy_init; int * yy_c_buf_p; scalar_t__ yy_buffer_stack_max; scalar_t__ yy_buffer_stack_top; int * yy_buffer_stack; } ;


 int * stdin ;
 int * stdout ;
 int * yyin ;
 int * yyout ;

__attribute__((used)) static int yy_init_globals (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;




    yyg->yy_buffer_stack = ((void*)0);
    yyg->yy_buffer_stack_top = 0;
    yyg->yy_buffer_stack_max = 0;
    yyg->yy_c_buf_p = ((void*)0);
    yyg->yy_init = 0;
    yyg->yy_start = 0;

    yyg->yy_start_stack_ptr = 0;
    yyg->yy_start_stack_depth = 0;
    yyg->yy_start_stack = ((void*)0);






    yyin = ((void*)0);
    yyout = ((void*)0);





    return 0;
}
