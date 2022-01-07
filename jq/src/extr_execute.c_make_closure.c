
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct jq_state {int stk; } ;
struct frame {TYPE_2__* entries; TYPE_1__* bc; } ;
struct closure {int member_1; int member_0; } ;
typedef int stack_ptr ;
struct TYPE_4__ {struct closure closure; } ;
struct TYPE_3__ {int nsubfunctions; int nclosures; int * subfunctions; } ;


 int ARG_NEWCLOSURE ;
 int assert (int) ;
 int frame_get_level (struct jq_state*,int) ;
 struct frame* stack_block (int *,int ) ;

__attribute__((used)) static struct closure make_closure(struct jq_state* jq, uint16_t* pc) {
  uint16_t level = *pc++;
  uint16_t idx = *pc++;
  stack_ptr fridx = frame_get_level(jq, level);
  struct frame* fr = stack_block(&jq->stk, fridx);
  if (idx & ARG_NEWCLOSURE) {


    int subfn_idx = idx & ~ARG_NEWCLOSURE;
    assert(subfn_idx < fr->bc->nsubfunctions);
    struct closure cl = {fr->bc->subfunctions[subfn_idx],
                         fridx};
    return cl;
  } else {


    int closure = idx;
    assert(closure >= 0);
    assert(closure < fr->bc->nclosures);
    return fr->entries[closure].closure;
  }
}
