
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_TRY_OPT (int ) ;
 int parse_partial_comb_app_decl ;
 int parse_partial_type_app_decl ;
 int type_partial_app_decl ;

struct tree *parse_partial_app_decl (void) {
  PARSE_INIT (type_partial_app_decl);
  PARSE_TRY_OPT (parse_partial_type_app_decl);
  PARSE_TRY_OPT (parse_partial_comb_app_decl);
  PARSE_FAIL;
}
