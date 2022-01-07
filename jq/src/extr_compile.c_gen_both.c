
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,int ,int ) ;
 int FORK ;
 int JUMP ;
 int gen_op_target (int ,int ) ;
 int gen_op_targetlater (int ) ;
 int inst_set_target (int ,int ) ;

block gen_both(block a, block b) {
  block jump = gen_op_targetlater(JUMP);
  block fork = gen_op_target(FORK, jump);
  block c = BLOCK(fork, a, jump, b);
  inst_set_target(jump, c);
  return c;
}
