
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jq_state {int curr_frame; int stk; } ;
struct frame {TYPE_1__* bc; } ;
struct TYPE_2__ {int nlocals; } ;


 int assert (int ) ;
 struct frame* frame_current (struct jq_state*) ;
 int * frame_local_var (struct jq_state*,int,int ) ;
 int frame_size (TYPE_1__*) ;
 int jv_free (int ) ;
 int stack_pop_block (int *,int ,int ) ;
 scalar_t__ stack_pop_will_free (int *,int ) ;

__attribute__((used)) static void frame_pop(struct jq_state* jq) {
  assert(jq->curr_frame);
  struct frame* fp = frame_current(jq);
  if (stack_pop_will_free(&jq->stk, jq->curr_frame)) {
    int nlocals = fp->bc->nlocals;
    for (int i=0; i<nlocals; i++) {
      jv_free(*frame_local_var(jq, i, 0));
    }
  }
  jq->curr_frame = stack_pop_block(&jq->stk, jq->curr_frame, frame_size(fp->bc));
}
