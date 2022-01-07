
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,...) ;
 int DUP ;
 int POP ;
 int gen_condbranch (int ,int ) ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;

block gen_cond(block cond, block iftrue, block iffalse) {
  return BLOCK(gen_op_simple(DUP), BLOCK(gen_subexp(cond), gen_op_simple(POP)),
               gen_condbranch(BLOCK(gen_op_simple(POP), iftrue),
                              BLOCK(gen_op_simple(POP), iffalse)));
}
