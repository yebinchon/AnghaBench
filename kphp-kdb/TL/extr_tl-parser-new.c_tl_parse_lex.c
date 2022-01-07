
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct parse {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;


 int assert (struct parse*) ;
 scalar_t__ lex_error ;
 scalar_t__ lex_none ;
 int load_parse (struct parse) ;
 TYPE_2__ parse ;
 int parse_lex () ;
 struct tree* parse_program () ;

struct tree *tl_parse_lex (struct parse *_parse) {
  assert (_parse);
  load_parse (*_parse);
  if (parse.lex.type == lex_none) {
    parse_lex ();
  }
  if (parse.lex.type == lex_error) {
    return 0;
  }
  return parse_program ();
}
