
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,int ,int ) ;
 int DUP ;
 int INDEX ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;

block gen_object_matcher(block name, block curr) {
  return BLOCK(gen_op_simple(DUP), gen_subexp(name), gen_op_simple(INDEX),
               curr);
}
