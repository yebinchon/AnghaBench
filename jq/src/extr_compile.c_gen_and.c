
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,...) ;
 int DUP ;
 int POP ;
 int gen_condbranch (int ,int ) ;
 int gen_const (int ) ;
 int gen_op_simple (int ) ;
 int jv_false () ;
 int jv_true () ;

block gen_and(block a, block b) {

  return BLOCK(gen_op_simple(DUP), a,
               gen_condbranch(BLOCK(gen_op_simple(POP),
                                    b,
                                    gen_condbranch(gen_const(jv_true()),
                                                   gen_const(jv_false()))),
                              BLOCK(gen_op_simple(POP), gen_const(jv_false()))));
}
