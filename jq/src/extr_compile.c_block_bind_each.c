
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ inst ;
struct TYPE_9__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;


 int OP_HAS_BINDING ;
 int assert (int ) ;
 scalar_t__ block_bind_subblock (int ,TYPE_2__,int,int ) ;
 int block_has_only_binders (TYPE_2__,int) ;
 int inst_block (TYPE_1__*) ;

__attribute__((used)) static int block_bind_each(block binder, block body, int bindflags) {
  assert(block_has_only_binders(binder, bindflags));
  bindflags |= OP_HAS_BINDING;
  int nrefs = 0;
  for (inst* curr = binder.first; curr; curr = curr->next) {
    nrefs += block_bind_subblock(inst_block(curr), body, bindflags, 0);
  }
  return nrefs;
}
