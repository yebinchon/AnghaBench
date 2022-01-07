
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_TRY_OPT (int ) ;
 int parse_args1 ;
 int parse_args2 ;
 int parse_args3 ;
 int parse_args4 ;
 int type_args ;

struct tree *parse_args (void) {
  PARSE_INIT (type_args);
  PARSE_TRY_OPT (parse_args1);
  PARSE_TRY_OPT (parse_args2);
  PARSE_TRY_OPT (parse_args3);
  PARSE_TRY_OPT (parse_args4);
  PARSE_FAIL;
}
