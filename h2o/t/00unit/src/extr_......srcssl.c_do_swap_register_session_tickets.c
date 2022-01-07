
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tickets; } ;


 int h2o_mem_swap (int *,void*,int) ;
 TYPE_1__ session_tickets ;

__attribute__((used)) static void do_swap_register_session_tickets(void *p)
{
    h2o_mem_swap(&session_tickets.tickets, p, sizeof(session_tickets.tickets));
}
