
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_barrier_t ;
struct TYPE_4__ {int * update_thread; } ;
struct TYPE_6__ {TYPE_1__ ticket; } ;
struct TYPE_5__ {int * barrier; } ;


 int assert (int ) ;
 TYPE_3__ conf ;
 int h2o_barrier_add (int *,int) ;
 int h2o_fatal (char*) ;
 TYPE_2__ session_tickets ;

void ssl_session_ticket_register_setup_barrier(h2o_barrier_t *barrier)
{
    if (conf.ticket.update_thread == ((void*)0))
        h2o_fatal("ticket-based encryption MUST be enabled when running QUIC");
    assert(session_tickets.barrier == ((void*)0));
    h2o_barrier_add(barrier, 1);
    session_tickets.barrier = barrier;
}
