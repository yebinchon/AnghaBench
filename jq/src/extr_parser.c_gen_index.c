
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,int ) ;
 int INDEX ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;

__attribute__((used)) static block gen_index(block obj, block key) {
  return BLOCK(gen_subexp(key), obj, gen_op_simple(INDEX));
}
