
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 scalar_t__ LEX_CHAR (char) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_combinator_id ;
 int parse_subexpr ;
 int type_partial_comb_app_decl ;

struct tree *parse_partial_comb_app_decl (void) {
  PARSE_INIT (type_partial_comb_app_decl);
  PARSE_TRY_PES (parse_combinator_id);
  while (1) {
    PARSE_TRY_PES (parse_subexpr);
    if (LEX_CHAR (';')) { break; }
  }
  PARSE_OK;
}
