
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,...) ;
 int JUMP ;
 int JUMP_F ;
 int gen_op_target (int ,int ) ;

block gen_condbranch(block iftrue, block iffalse) {
  iftrue = BLOCK(iftrue, gen_op_target(JUMP, iffalse));
  return BLOCK(gen_op_target(JUMP_F, iftrue), iftrue, iffalse);
}
