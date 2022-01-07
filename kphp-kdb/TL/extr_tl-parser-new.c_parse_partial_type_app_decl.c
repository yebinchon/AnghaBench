
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int EXPECT (char*) ;
 scalar_t__ LEX_CHAR (char) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_boxed_type_ident ;
 int parse_expr ;
 int parse_subexpr ;
 int type_partial_type_app_decl ;

struct tree *parse_partial_type_app_decl (void) {
  PARSE_INIT (type_partial_type_app_decl);
  PARSE_TRY_PES (parse_boxed_type_ident);
  if (LEX_CHAR ('<')) {
    EXPECT ("<");
    while (1) {
      PARSE_TRY_PES (parse_expr);
      if (LEX_CHAR ('>')) { break; }
      EXPECT (",");
    }
    EXPECT (">");
    PARSE_OK;
  } else {
    while (1) {
      PARSE_TRY_PES (parse_subexpr);
      if (LEX_CHAR (';')) { break; }
    }
    PARSE_OK;
  }
}
