
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct frame {scalar_t__ retaddr; scalar_t__ retdata; } ;
struct closure {int member_1; TYPE_1__* member_0; } ;
typedef int jv ;
struct TYPE_10__ {int debug_trace_enabled; int initial_execution; TYPE_1__* bc; int nomem_handler_data; int nomem_handler; } ;
typedef TYPE_2__ jq_state ;
struct TYPE_9__ {int code; } ;


 int JQ_DEBUG_TRACE_ALL ;
 struct frame* frame_push (TYPE_2__*,struct closure,int ,int ) ;
 int jq_reset (TYPE_2__*) ;
 int jv_nomem_handler (int ,int ) ;
 int stack_get_pos (TYPE_2__*) ;
 int stack_push (TYPE_2__*,int ) ;
 int stack_save (TYPE_2__*,int ,int ) ;

void jq_start(jq_state *jq, jv input, int flags) {
  jv_nomem_handler(jq->nomem_handler, jq->nomem_handler_data);
  jq_reset(jq);

  struct closure top = {jq->bc, -1};
  struct frame* top_frame = frame_push(jq, top, 0, 0);
  top_frame->retdata = 0;
  top_frame->retaddr = 0;

  stack_push(jq, input);
  stack_save(jq, jq->bc->code, stack_get_pos(jq));
  jq->debug_trace_enabled = flags & JQ_DEBUG_TRACE_ALL;
  jq->initial_execution = 1;
}
