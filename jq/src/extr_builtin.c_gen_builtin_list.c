
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int block ;


 int BLOCK (int ,int ) ;
 int block_list_funcs (int ,int) ;
 int gen_const (int ) ;
 int gen_function (char*,int ,int ) ;
 int gen_noop () ;
 int jv_array_append (int ,int ) ;
 int jv_string (char*) ;

__attribute__((used)) static block gen_builtin_list(block builtins) {
  jv list = jv_array_append(block_list_funcs(builtins, 1), jv_string("builtins/0"));
  return BLOCK(builtins, gen_function("builtins", gen_noop(), gen_const(list)));
}
