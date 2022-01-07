
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,...) ;
 int INDEX ;
 int gen_and (int ,int ) ;
 int gen_call (char*,int ) ;
 int gen_cond (int ,int ,int ) ;
 int gen_const (int ) ;
 int gen_lambda (int ) ;
 int gen_noop () ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;
 int jv_string (char*) ;

block gen_try_handler(block handler) {

  return gen_cond(
                  gen_and(gen_call("_equal",
                                   BLOCK(gen_lambda(gen_const(jv_string("object"))),
                                         gen_lambda(gen_noop()))),
                          BLOCK(gen_subexp(gen_const(jv_string("__jq"))),
                                gen_noop(),
                                gen_op_simple(INDEX))),

                  gen_call("error", gen_noop()),

                  handler);
}
