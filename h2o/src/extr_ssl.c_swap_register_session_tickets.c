
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int session_ticket_vector_t ;


 int do_swap_register_session_tickets ;
 int register_session_tickets (int ,int *) ;

__attribute__((used)) static void swap_register_session_tickets(session_ticket_vector_t *p)
{
    register_session_tickets(do_swap_register_session_tickets, p);
}
