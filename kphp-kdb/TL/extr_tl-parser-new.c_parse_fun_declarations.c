
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;


 int EXPECT (char*) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 scalar_t__ lex_eof ;
 scalar_t__ lex_triple_minus ;
 TYPE_2__ parse ;
 int parse_declaration ;
 int type_fun_declarations ;

struct tree *parse_fun_declarations (void) {
  PARSE_INIT (type_fun_declarations);
  if (parse.lex.type == lex_triple_minus || parse.lex.type == lex_eof) { PARSE_OK; }
  while (1) {
    PARSE_TRY_PES (parse_declaration);
    EXPECT (";");
    if (parse.lex.type == lex_eof || parse.lex.type == lex_triple_minus) { PARSE_OK; }
  }
}
