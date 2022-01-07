
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int gen_function (char*,int ,int ) ;
 int gen_noop () ;

block gen_lambda(block body) {
  return gen_function("@lambda", gen_noop(), body);
}
