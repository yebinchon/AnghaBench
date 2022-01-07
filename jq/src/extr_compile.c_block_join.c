
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int block_append (int *,int ) ;

block block_join(block a, block b) {
  block c = a;
  block_append(&c, b);
  return c;
}
