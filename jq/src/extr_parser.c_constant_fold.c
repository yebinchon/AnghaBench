
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int block ;




 scalar_t__ JV_KIND_INVALID ;
 scalar_t__ JV_KIND_NULL ;
 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ JV_KIND_STRING ;


 int block_const (int ) ;
 scalar_t__ block_const_kind (int ) ;
 int block_free (int ) ;
 int block_is_const (int ) ;
 int block_is_single (int ) ;
 int gen_const (int ) ;
 int gen_noop () ;
 int jv_cmp (int ,int ) ;
 int jv_false () ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid () ;
 int jv_number (double) ;
 double jv_number_value (int ) ;
 int jv_string_concat (int ,int ) ;
 int jv_true () ;

__attribute__((used)) static block constant_fold(block a, block b, int op) {
  if (!block_is_single(a) || !block_is_const(a) ||
      !block_is_single(b) || !block_is_const(b))
    return gen_noop();
  if (op == '+') {
    if (block_const_kind(a) == JV_KIND_NULL) {
      block_free(a);
      return b;
    }
    if (block_const_kind(b) == JV_KIND_NULL) {
      block_free(b);
      return a;
    }
  }
  if (block_const_kind(a) != block_const_kind(b))
    return gen_noop();

  jv res = jv_invalid();

  if (block_const_kind(a) == JV_KIND_NUMBER) {
    jv jv_a = block_const(a);
    jv jv_b = block_const(b);

    double na = jv_number_value(jv_a);
    double nb = jv_number_value(jv_b);

    int cmp = jv_cmp(jv_a, jv_b);

    switch (op) {
    case '+': res = jv_number(na + nb); break;
    case '-': res = jv_number(na - nb); break;
    case '*': res = jv_number(na * nb); break;
    case '/': res = jv_number(na / nb); break;
    case 131: res = (cmp == 0 ? jv_true() : jv_false()); break;
    case 128: res = (cmp != 0 ? jv_true() : jv_false()); break;
    case '<': res = (cmp < 0 ? jv_true() : jv_false()); break;
    case '>': res = (cmp > 0 ? jv_true() : jv_false()); break;
    case 129: res = (cmp <= 0 ? jv_true() : jv_false()); break;
    case 130: res = (cmp >= 0 ? jv_true() : jv_false()); break;
    default: break;
    }
  } else if (op == '+' && block_const_kind(a) == JV_KIND_STRING) {
    res = jv_string_concat(block_const(a), block_const(b));
  } else {
    return gen_noop();
  }

  if (jv_get_kind(res) == JV_KIND_INVALID)
    return gen_noop();

  block_free(a);
  block_free(b);
  return gen_const(res);
}
