
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int last; TYPE_2__* first; } ;
typedef TYPE_3__ block ;
struct TYPE_11__ {int flags; } ;
struct TYPE_8__ {int target; } ;
struct TYPE_9__ {TYPE_1__ imm; int op; } ;


 int OP_HAS_BRANCH ;
 int assert (int) ;
 int block_is_single (TYPE_3__) ;
 TYPE_4__* opcode_describe (int ) ;

void inst_set_target(block b, block target) {
  assert(block_is_single(b));
  assert(opcode_describe(b.first->op)->flags & OP_HAS_BRANCH);
  assert(target.last);
  b.first->imm.target = target.last;
}
