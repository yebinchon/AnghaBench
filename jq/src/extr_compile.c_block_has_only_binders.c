
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ op; struct TYPE_5__* next; } ;
typedef TYPE_1__ inst ;
struct TYPE_6__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_7__ {int flags; } ;


 scalar_t__ MODULEMETA ;
 int OP_BIND_WILDCARD ;
 int OP_HAS_BINDING ;
 TYPE_3__* opcode_describe (scalar_t__) ;

int block_has_only_binders(block binders, int bindflags) {
  bindflags |= OP_HAS_BINDING;
  bindflags &= ~OP_BIND_WILDCARD;
  for (inst* curr = binders.first; curr; curr = curr->next) {
    if ((opcode_describe(curr->op)->flags & bindflags) != bindflags && curr->op != MODULEMETA) {
      return 0;
    }
  }
  return 1;
}
