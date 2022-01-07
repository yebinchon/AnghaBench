
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unexpected_end ;
struct mrb_parser_state {scalar_t__ nerr; int lstate; TYPE_1__* error_buffer; scalar_t__ lex_strterm; int * parsing_heredoc; } ;
typedef int mrb_bool ;
struct TYPE_2__ {char* message; } ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static mrb_bool
is_code_block_open(struct mrb_parser_state *parser)
{
  mrb_bool code_block_open = FALSE;


  if (parser->parsing_heredoc != ((void*)0)) return TRUE;


  if (parser->lex_strterm) return TRUE;


  if (0 < parser->nerr) {
    const char unexpected_end[] = "syntax error, unexpected $end";
    const char *message = parser->error_buffer[0].message;






    if (strncmp(message, unexpected_end, sizeof(unexpected_end) - 1) == 0) {
      code_block_open = TRUE;
    }
    else if (strcmp(message, "syntax error, unexpected keyword_end") == 0) {
      code_block_open = FALSE;
    }
    else if (strcmp(message, "syntax error, unexpected tREGEXP_BEG") == 0) {
      code_block_open = FALSE;
    }
    return code_block_open;
  }

  switch (parser->lstate) {



  case 138:


    code_block_open = FALSE;
    break;
  case 135:


    code_block_open = TRUE;
    break;
  case 137:


    code_block_open = TRUE;
    break;
  case 131:

    code_block_open = TRUE;
    break;
  case 128:

    code_block_open = TRUE;
    break;



  case 139:

    code_block_open = FALSE;
    break;



  case 136:
    break;
  case 134:

    break;
  case 133:

    break;
  case 132:

    break;
  case 129:

    break;
  case 130:

    break;
  default:

    break;
  }

  return code_block_open;
}
