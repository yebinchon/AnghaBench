
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 int PARSE_TRY_PES (int ) ;
 int parse_nat_term ;
 int type_multiplicity ;

struct tree *parse_multiplicity (void) {
  PARSE_INIT (type_multiplicity);
  PARSE_TRY_PES (parse_nat_term);
  PARSE_OK;
}
