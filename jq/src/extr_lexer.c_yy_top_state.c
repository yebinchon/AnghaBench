
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {int* yy_start_stack; int yy_start_stack_ptr; } ;



__attribute__((used)) static int yy_top_state (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
 return yyg->yy_start_stack[yyg->yy_start_stack_ptr - 1];
}
