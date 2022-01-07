
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val_type ;
typedef int token_type ;


 scalar_t__ IS_STR (int ) ;





 int op_length ;


 int op_rem ;
 int op_shl ;

 int* op_type ;
 int op_type_to_id ;




 int t_str ;
 int v_cstring ;
 int v_double ;
 int v_err ;
 int v_int ;
 int v_long ;

inline val_type get_op_type (val_type a, token_type op) {
  switch (op) {
    case 138:
    case 136:
    case 139:
      if (a != v_int && a != v_long) {
        return v_err;
      }
    case 133:
    case 135:
      return v_int;
    case 134:
      return v_long;
    case 137:
      return v_double;
    case 132:
      return v_cstring;
    default:
      break;
  }

  if (IS_STR(a)) {
    if (op_type[op] == 129 || op == op_shl || op == op_length || op == op_type_to_id) {
      return v_int;
    }
    if (op_type[op] == t_str) {
      return v_cstring;
    }
    return v_err;
  }

  switch (op_type[op]) {
    case 131:
      if (op == op_rem && a == v_double) {
        return v_err;
      }
      return a;
    case 128:
      if (a == v_double) {
        return v_err;
      }
      return v_int;
    case 130:
      if (a == v_double) {
        return v_err;
      }
      return a;
    case 129:
      return v_int;
    default:
      return v_err;
  }
  return v_err;
}
