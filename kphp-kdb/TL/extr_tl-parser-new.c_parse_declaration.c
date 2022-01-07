
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_TRY_OPT (int ) ;
 int parse_builtin_combinator_decl ;
 int parse_combinator_decl ;
 int parse_final_decl ;
 int parse_partial_app_decl ;
 int type_declaration ;

struct tree *parse_declaration (void) {
  PARSE_INIT (type_declaration);
  PARSE_TRY_OPT (parse_combinator_decl);
  PARSE_TRY_OPT (parse_partial_app_decl);
  PARSE_TRY_OPT (parse_final_decl);
  PARSE_TRY_OPT (parse_builtin_combinator_decl);
  PARSE_FAIL;
}
