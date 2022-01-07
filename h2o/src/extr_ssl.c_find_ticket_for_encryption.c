
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct st_session_ticket_t {scalar_t__ not_before; scalar_t__ not_after; } ;
struct TYPE_3__ {size_t size; struct st_session_ticket_t** entries; } ;
typedef TYPE_1__ session_ticket_vector_t ;



__attribute__((used)) static struct st_session_ticket_t *find_ticket_for_encryption(session_ticket_vector_t *tickets, uint64_t now)
{
    size_t i;

    for (i = 0; i != tickets->size; ++i) {
        struct st_session_ticket_t *ticket = tickets->entries[i];
        if (ticket->not_before <= now) {
            if (now <= ticket->not_after) {
                return ticket;
            } else {
                return ((void*)0);
            }
        }
    }
    return ((void*)0);
}
