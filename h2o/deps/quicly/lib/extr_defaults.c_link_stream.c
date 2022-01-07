
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int prev; } ;
struct st_quicly_default_scheduler_state_t {TYPE_4__ blocked; TYPE_4__ active; } ;
struct TYPE_6__ {int default_scheduler; } ;
struct TYPE_7__ {TYPE_1__ pending_link; } ;
struct TYPE_8__ {TYPE_2__ _send_aux; int sendstate; } ;
typedef TYPE_3__ quicly_stream_t ;
typedef TYPE_4__ quicly_linklist_t ;


 int quicly_linklist_insert (int ,int *) ;
 int quicly_linklist_is_linked (int *) ;
 int quicly_sendstate_can_send (int *,int *) ;

__attribute__((used)) static void link_stream(struct st_quicly_default_scheduler_state_t *sched, quicly_stream_t *stream, int conn_is_flow_capped)
{
    if (!quicly_linklist_is_linked(&stream->_send_aux.pending_link.default_scheduler)) {
        quicly_linklist_t *slot = &sched->active;
        if (conn_is_flow_capped && !quicly_sendstate_can_send(&stream->sendstate, ((void*)0)))
            slot = &sched->blocked;
        quicly_linklist_insert(slot->prev, &stream->_send_aux.pending_link.default_scheduler);
    }
}
