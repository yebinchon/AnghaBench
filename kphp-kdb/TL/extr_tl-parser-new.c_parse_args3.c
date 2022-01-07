
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct parse {int dummy; } ;


 int EXPECT (char*) ;
 scalar_t__ LEX_CHAR (char) ;
 int PARSE_ADD (int ) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY (int ) ;
 int PARSE_TRY_PES (int ) ;
 scalar_t__ S ;
 int T ;
 int load_parse (struct parse) ;
 int parse_optional_arg_def ;
 int parse_type_term ;
 int parse_var_ident_opt ;
 struct parse save_parse () ;
 int tree_add_child (int ,scalar_t__) ;
 int type_args3 ;
 int type_exclam ;

struct tree *parse_args3 (void) {
  PARSE_INIT (type_args3);
  PARSE_TRY_PES (parse_var_ident_opt);
  EXPECT (":");
  struct parse so = save_parse ();
  PARSE_TRY (parse_optional_arg_def);
  if (S) {
    tree_add_child (T, S);
  } else {
    load_parse (so);
  }
  if (LEX_CHAR ('!')) {
    PARSE_ADD (type_exclam);
    EXPECT ("!");
  }
  PARSE_TRY_PES (parse_type_term);
  PARSE_OK;
}
