
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inst ;
typedef int block ;


 int BLOCK (int ,int ) ;
 int OP_HAS_BINDING ;
 int assert (int ) ;
 scalar_t__ block_bind_subblock (int ,int ,int,int ) ;
 int block_free (int ) ;
 int block_has_only_binders (int ,int) ;
 int * block_take_last (int *) ;
 int inst_block (int *) ;

block block_bind_referenced(block binder, block body, int bindflags) {
  assert(block_has_only_binders(binder, bindflags));
  bindflags |= OP_HAS_BINDING;

  inst* curr;
  while ((curr = block_take_last(&binder))) {
    block b = inst_block(curr);
    if (block_bind_subblock(b, body, bindflags, 0) == 0) {
      block_free(b);
    } else {
      body = BLOCK(b, body);
    }
  }
  return body;
}
