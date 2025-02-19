
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct parse {int dummy; } ;


 int EXPECT (char*) ;
 scalar_t__ LEX_CHAR (char) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY (int ) ;
 int PARSE_TRY_PES (int ) ;
 scalar_t__ S ;
 int T ;
 int load_parse (struct parse) ;
 int parse_args ;
 int parse_multiplicity ;
 int parse_optional_arg_def ;
 int parse_var_ident_opt ;
 struct parse save ;
 struct parse save_parse () ;
 int tree_add_child (int ,scalar_t__) ;
 int type_args2 ;

struct tree *parse_args2 (void) {
  PARSE_INIT (type_args2);
  PARSE_TRY (parse_var_ident_opt);
  if (S && LEX_CHAR (':')) {
    tree_add_child (T, S);
    EXPECT (":");
  } else {
    load_parse (save);
  }
  struct parse so = save_parse ();
  PARSE_TRY (parse_optional_arg_def);
  if (S) {
    tree_add_child (T, S);
  } else {
    load_parse (so);
  }
  struct parse save2 = save_parse ();
  PARSE_TRY (parse_multiplicity);
  if (S && LEX_CHAR ('*')) {
    tree_add_child (T, S);
    EXPECT ("*");
  } else {
    load_parse (save2);
  }
  EXPECT ("[");
  while (1) {
    if (LEX_CHAR (']')) { break; }
    PARSE_TRY_PES (parse_args);
  }
  EXPECT ("]");
  PARSE_OK;
}
