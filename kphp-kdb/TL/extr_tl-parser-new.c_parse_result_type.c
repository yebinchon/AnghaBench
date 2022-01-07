
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
 int type_result_type ;

struct tree *parse_result_type (void) {
  PARSE_INIT (type_result_type);
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
      if (LEX_CHAR (';')) { PARSE_OK; }
      PARSE_TRY_PES (parse_subexpr);
    }
  }
}
