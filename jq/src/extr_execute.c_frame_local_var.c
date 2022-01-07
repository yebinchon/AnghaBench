
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jq_state {int stk; } ;
struct frame {TYPE_2__* bc; TYPE_1__* entries; } ;
typedef int jv ;
struct TYPE_4__ {int nlocals; int nclosures; } ;
struct TYPE_3__ {int localvar; } ;


 int assert (int) ;
 int frame_get_level (struct jq_state*,int) ;
 struct frame* stack_block (int *,int ) ;

__attribute__((used)) static jv* frame_local_var(struct jq_state* jq, int var, int level) {
  struct frame* fr = stack_block(&jq->stk, frame_get_level(jq, level));
  assert(var >= 0);
  assert(var < fr->bc->nlocals);
  return &fr->entries[fr->bc->nclosures + var].localvar;
}
