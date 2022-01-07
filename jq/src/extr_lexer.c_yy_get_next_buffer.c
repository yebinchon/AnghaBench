
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ yyscan_t ;
typedef int yy_size_t ;
struct yyguts_t {char* yytext_ptr; char* yy_c_buf_p; int yy_n_chars; } ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_3__ {char* yy_ch_buf; scalar_t__ yy_fill_buffer; scalar_t__ yy_buffer_status; int yy_n_chars; int yy_buf_size; scalar_t__ yy_is_our_buffer; } ;


 int EOB_ACT_CONTINUE_SCAN ;
 int EOB_ACT_END_OF_FILE ;
 int EOB_ACT_LAST_MATCH ;
 scalar_t__ YY_BUFFER_EOF_PENDING ;
 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 void* YY_END_OF_BUFFER_CHAR ;
 int YY_FATAL_ERROR (char*) ;
 int YY_INPUT (char*,int,int) ;
 int YY_MORE_ADJ ;
 int YY_READ_BUF_SIZE ;
 int yyin ;
 scalar_t__ yyrealloc (void*,int ,scalar_t__) ;
 int yyrestart (int ,scalar_t__) ;

__attribute__((used)) static int yy_get_next_buffer (yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;
 char *dest = YY_CURRENT_BUFFER_LVALUE->yy_ch_buf;
 char *source = yyg->yytext_ptr;
 int number_to_move, i;
 int ret_val;

 if ( yyg->yy_c_buf_p > &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[yyg->yy_n_chars + 1] )
  YY_FATAL_ERROR(
  "fatal flex scanner internal error--end of buffer missed" );

 if ( YY_CURRENT_BUFFER_LVALUE->yy_fill_buffer == 0 )
  {
  if ( yyg->yy_c_buf_p - yyg->yytext_ptr - YY_MORE_ADJ == 1 )
   {



   return EOB_ACT_END_OF_FILE;
   }

  else
   {



   return EOB_ACT_LAST_MATCH;
   }
  }




 number_to_move = (int) (yyg->yy_c_buf_p - yyg->yytext_ptr - 1);

 for ( i = 0; i < number_to_move; ++i )
  *(dest++) = *(source++);

 if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_EOF_PENDING )



  YY_CURRENT_BUFFER_LVALUE->yy_n_chars = yyg->yy_n_chars = 0;

 else
  {
   int num_to_read =
   YY_CURRENT_BUFFER_LVALUE->yy_buf_size - number_to_move - 1;

  while ( num_to_read <= 0 )
   {


   YY_BUFFER_STATE b = YY_CURRENT_BUFFER_LVALUE;

   int yy_c_buf_p_offset =
    (int) (yyg->yy_c_buf_p - b->yy_ch_buf);

   if ( b->yy_is_our_buffer )
    {
    int new_size = b->yy_buf_size * 2;

    if ( new_size <= 0 )
     b->yy_buf_size += b->yy_buf_size / 8;
    else
     b->yy_buf_size *= 2;

    b->yy_ch_buf = (char *)

     yyrealloc( (void *) b->yy_ch_buf,
        (yy_size_t) (b->yy_buf_size + 2) , yyscanner );
    }
   else

    b->yy_ch_buf = ((void*)0);

   if ( ! b->yy_ch_buf )
    YY_FATAL_ERROR(
    "fatal error - scanner input buffer overflow" );

   yyg->yy_c_buf_p = &b->yy_ch_buf[yy_c_buf_p_offset];

   num_to_read = YY_CURRENT_BUFFER_LVALUE->yy_buf_size -
      number_to_move - 1;

   }

  if ( num_to_read > YY_READ_BUF_SIZE )
   num_to_read = YY_READ_BUF_SIZE;


  YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
   yyg->yy_n_chars, num_to_read );

  YY_CURRENT_BUFFER_LVALUE->yy_n_chars = yyg->yy_n_chars;
  }

 if ( yyg->yy_n_chars == 0 )
  {
  if ( number_to_move == YY_MORE_ADJ )
   {
   ret_val = EOB_ACT_END_OF_FILE;
   yyrestart( yyin , yyscanner);
   }

  else
   {
   ret_val = EOB_ACT_LAST_MATCH;
   YY_CURRENT_BUFFER_LVALUE->yy_buffer_status =
    YY_BUFFER_EOF_PENDING;
   }
  }

 else
  ret_val = EOB_ACT_CONTINUE_SCAN;

 if ((yyg->yy_n_chars + number_to_move) > YY_CURRENT_BUFFER_LVALUE->yy_buf_size) {

  int new_size = yyg->yy_n_chars + number_to_move + (yyg->yy_n_chars >> 1);
  YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) yyrealloc(
   (void *) YY_CURRENT_BUFFER_LVALUE->yy_ch_buf, (yy_size_t) new_size , yyscanner );
  if ( ! YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
   YY_FATAL_ERROR( "out of dynamic memory in yy_get_next_buffer()" );

  YY_CURRENT_BUFFER_LVALUE->yy_buf_size = (int) (new_size - 2);
 }

 yyg->yy_n_chars += number_to_move;
 YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[yyg->yy_n_chars] = YY_END_OF_BUFFER_CHAR;
 YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[yyg->yy_n_chars + 1] = YY_END_OF_BUFFER_CHAR;

 yyg->yytext_ptr = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[0];

 return ret_val;
}
