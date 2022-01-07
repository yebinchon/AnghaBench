
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,int ) ;
 int INSERT ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;

block gen_dictpair(block k, block v) {
  return BLOCK(gen_subexp(k), gen_subexp(v), gen_op_simple(INSERT));
}
