
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int block_bind_subblock_inner (int*,int ,int ,int,int) ;

__attribute__((used)) static int block_bind_subblock(block binder, block body, int bindflags, int break_distance) {
  int any_unbound;
  return block_bind_subblock_inner(&any_unbound, binder, body, bindflags, break_distance);
}
