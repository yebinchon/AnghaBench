
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
struct yyguts_t {scalar_t__ yy_start_stack_ptr; int * yy_start_stack; } ;


 int BEGIN (int ) ;
 int YY_FATAL_ERROR (char*) ;

__attribute__((used)) static void yy_pop_state (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
 if ( --yyg->yy_start_stack_ptr < 0 )
  YY_FATAL_ERROR( "start-condition stack underflow" );

 BEGIN(yyg->yy_start_stack[yyg->yy_start_stack_ptr]);
}
