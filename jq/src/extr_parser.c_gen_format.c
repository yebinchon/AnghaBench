
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int block ;


 int BLOCK (int ,int ) ;
 int gen_call (char*,int ) ;
 int gen_const (int ) ;
 int gen_lambda (int ) ;

__attribute__((used)) static block gen_format(block a, jv fmt) {
  return BLOCK(a, gen_call("format", gen_lambda(gen_const(fmt))));
}
