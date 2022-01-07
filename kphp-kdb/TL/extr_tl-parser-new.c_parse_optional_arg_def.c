
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int EXPECT (char*) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_nat_const ;
 int parse_var_ident ;
 int type_optional_arg_def ;

struct tree *parse_optional_arg_def (void) {
  PARSE_INIT (type_optional_arg_def);
  PARSE_TRY_PES (parse_var_ident);
  EXPECT (".");
  PARSE_TRY_PES (parse_nat_const);
  EXPECT ("?");
  PARSE_OK;
}
