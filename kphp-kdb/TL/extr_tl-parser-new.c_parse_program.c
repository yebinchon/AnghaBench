
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 scalar_t__ expect (char*) ;
 scalar_t__ lex_eof ;
 scalar_t__ lex_error ;
 TYPE_2__ parse ;
 int parse_constr_declarations ;
 int parse_fun_declarations ;
 int type_tl_program ;

struct tree *parse_program (void) {
  PARSE_INIT (type_tl_program);
  while (1) {
    PARSE_TRY_PES (parse_constr_declarations);
    if (parse.lex.type == lex_eof) { PARSE_OK; }
    if (parse.lex.type == lex_error || expect ("---") < 0 || expect ("functions") < 0 || expect ("---") < 0) { PARSE_FAIL; }

    PARSE_TRY_PES (parse_fun_declarations);
    if (parse.lex.type == lex_eof) { PARSE_OK; }
    if (parse.lex.type == lex_error || expect ("---") < 0 || expect ("types") < 0 || expect ("---") < 0) { PARSE_FAIL; }
  }
}
