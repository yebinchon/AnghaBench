
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int STOREV ;
 int gen_destructure (int ,int ,int ) ;
 int gen_op_unbound (int ,char const*) ;

block gen_var_binding(block var, const char* name, block body) {
  return gen_destructure(var, gen_op_unbound(STOREV, name), body);
}
