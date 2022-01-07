
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; int * entries; } ;
typedef TYPE_1__ session_ticket_vector_t ;


 int free (int *) ;
 int free_ticket (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void free_tickets(session_ticket_vector_t *tickets)
{
    size_t i;
    for (i = 0; i != tickets->size; ++i)
        free_ticket(tickets->entries[i]);
    free(tickets->entries);
    memset(tickets, 0, sizeof(*tickets));
}
