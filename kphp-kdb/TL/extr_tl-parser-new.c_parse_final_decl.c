
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_TRY_OPT (int ) ;
 int parse_final_empty ;
 int parse_final_final ;
 int parse_final_new ;
 int type_final_decl ;

struct tree *parse_final_decl (void) {
  PARSE_INIT (type_final_decl);
  PARSE_TRY_OPT (parse_final_new);
  PARSE_TRY_OPT (parse_final_final);
  PARSE_TRY_OPT (parse_final_empty);
  PARSE_FAIL;
}
