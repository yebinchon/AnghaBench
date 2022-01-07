
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_combinator {int result; int var_num; } ;


 scalar_t__ TLS_COMBINATOR_RIGHT ;
 scalar_t__ TLS_COMBINATOR_RIGHT_V2 ;
 int read_tree (int *) ;
 int read_type_expr (int *) ;
 int schema_version ;
 scalar_t__ tl_parse_error () ;
 scalar_t__ tl_parse_int () ;

int read_combinator_right (struct tl_combinator *c) {
  if (schema_version >= 2) {
    if (tl_parse_int () != TLS_COMBINATOR_RIGHT_V2 || tl_parse_error ()) {
      return -1;
    }
    c->result = read_type_expr (&c->var_num);
  } else {
    if (tl_parse_int () != TLS_COMBINATOR_RIGHT || tl_parse_error ()) {
      return -1;
    }
    c->result = read_tree (&c->var_num);
  }
  if (!c->result) {
    return -1;
  }
  return 1;
}
