
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_term ;
 int type_type_term ;

struct tree *parse_type_term (void) {
  PARSE_INIT (type_type_term);
  PARSE_TRY_PES (parse_term);
  PARSE_OK;
}
