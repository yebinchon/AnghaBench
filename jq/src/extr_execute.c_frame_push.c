
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union frame_entry {int localvar; int closure; } ;
typedef int uint16_t ;
struct jq_state {int curr_frame; int stk; } ;
struct frame {union frame_entry* entries; TYPE_1__* bc; int env; } ;
struct closure {TYPE_1__* bc; int env; } ;
typedef int stack_ptr ;
struct TYPE_2__ {int nclosures; int nlocals; } ;


 int assert (int) ;
 int frame_size (TYPE_1__*) ;
 int jv_invalid () ;
 int make_closure (struct jq_state*,int *) ;
 struct frame* stack_block (int *,int ) ;
 int stack_push_block (int *,int ,int ) ;

__attribute__((used)) static struct frame* frame_push(struct jq_state* jq, struct closure callee,
                                uint16_t* argdef, int nargs) {
  stack_ptr new_frame_idx = stack_push_block(&jq->stk, jq->curr_frame, frame_size(callee.bc));
  struct frame* new_frame = stack_block(&jq->stk, new_frame_idx);
  new_frame->bc = callee.bc;
  new_frame->env = callee.env;
  assert(nargs == new_frame->bc->nclosures);
  union frame_entry* entries = new_frame->entries;
  for (int i=0; i<nargs; i++) {
    entries->closure = make_closure(jq, argdef + i * 2);
    entries++;
  }
  for (int i=0; i<callee.bc->nlocals; i++) {
    entries->localvar = jv_invalid();
    entries++;
  }
  jq->curr_frame = new_frame_idx;
  return new_frame;
}
