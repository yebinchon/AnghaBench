
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; char* ptr; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;


 int EXPECT (char*) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 scalar_t__ lex_char ;
 TYPE_2__ parse ;
 int parse_type_term ;
 int parse_var_ident ;
 int type_opt_args ;

struct tree *parse_opt_args (void) {
  PARSE_INIT (type_opt_args);
  while (1) {
    PARSE_TRY_PES (parse_var_ident);
    if (parse.lex.type == lex_char && *parse.lex.ptr == ':') { break;}
  }
  EXPECT (":");
  PARSE_TRY_PES (parse_type_term);
  PARSE_OK;
}
