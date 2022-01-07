
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int EXPECT (char*) ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_boxed_type_ident ;
 int type_final_empty ;

struct tree *parse_final_empty (void) {
  PARSE_INIT (type_final_empty);
  EXPECT ("Empty");
  PARSE_TRY_PES (parse_boxed_type_ident);
  PARSE_OK;
}
