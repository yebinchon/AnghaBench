
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yyscan_t ;
typedef int yy_size_t ;
struct yyguts_t {int yy_buffer_stack_max; int yy_buffer_stack_top; struct yy_buffer_state** yy_buffer_stack; } ;
struct yy_buffer_state {int dummy; } ;


 int YY_FATAL_ERROR (char*) ;
 int memset (struct yy_buffer_state**,int ,int) ;
 scalar_t__ yyalloc (int,scalar_t__) ;
 scalar_t__ yyrealloc (struct yy_buffer_state**,int,scalar_t__) ;

__attribute__((used)) static void yyensure_buffer_stack (yyscan_t yyscanner)
{
 yy_size_t num_to_alloc;
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;

 if (!yyg->yy_buffer_stack) {





      num_to_alloc = 1;
  yyg->yy_buffer_stack = (struct yy_buffer_state**)yyalloc
        (num_to_alloc * sizeof(struct yy_buffer_state*)
        , yyscanner);
  if ( ! yyg->yy_buffer_stack )
   YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );

  memset(yyg->yy_buffer_stack, 0, num_to_alloc * sizeof(struct yy_buffer_state*));

  yyg->yy_buffer_stack_max = num_to_alloc;
  yyg->yy_buffer_stack_top = 0;
  return;
 }

 if (yyg->yy_buffer_stack_top >= (yyg->yy_buffer_stack_max) - 1){


  yy_size_t grow_size = 8 ;

  num_to_alloc = yyg->yy_buffer_stack_max + grow_size;
  yyg->yy_buffer_stack = (struct yy_buffer_state**)yyrealloc
        (yyg->yy_buffer_stack,
        num_to_alloc * sizeof(struct yy_buffer_state*)
        , yyscanner);
  if ( ! yyg->yy_buffer_stack )
   YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );


  memset(yyg->yy_buffer_stack + yyg->yy_buffer_stack_max, 0, grow_size * sizeof(struct yy_buffer_state*));
  yyg->yy_buffer_stack_max = num_to_alloc;
 }
}
