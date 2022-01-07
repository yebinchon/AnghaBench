
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct st_session_ticket_t {scalar_t__ not_after; scalar_t__* name; scalar_t__ not_before; } ;
struct TYPE_12__ {int size; struct st_session_ticket_t** entries; } ;
typedef TYPE_4__ session_ticket_vector_t ;
struct TYPE_9__ {int md; int cipher; } ;
struct TYPE_10__ {TYPE_1__ generating; } ;
struct TYPE_11__ {TYPE_2__ vars; } ;
struct TYPE_13__ {int lifetime; TYPE_3__ ticket; } ;


 TYPE_8__ conf ;
 int * find_ticket_for_encryption (TYPE_4__*,scalar_t__) ;
 int free_ticket (struct st_session_ticket_t*) ;
 int h2o_fatal (char*) ;
 int h2o_vector_reserve (int *,TYPE_4__*,int) ;
 int memmove (struct st_session_ticket_t**,struct st_session_ticket_t**,int) ;
 struct st_session_ticket_t* new_ticket (int ,int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int update_tickets(session_ticket_vector_t *tickets, uint64_t now)
{
    int altered = 0, has_valid_ticket;


    while (tickets->size != 0) {
        struct st_session_ticket_t *oldest = tickets->entries[tickets->size - 1];
        if (now <= oldest->not_after)
            break;
        tickets->entries[--tickets->size] = ((void*)0);
        free_ticket(oldest);
        altered = 1;
    }




    if (tickets->size > 1) {
        size_t offending = 0, i;
        do {
            for (i = offending + 1; i < tickets->size; ++i)
                if (tickets->entries[i]->name[0] == tickets->entries[offending]->name[0])
                    break;
            if (i < tickets->size) {
                free_ticket(tickets->entries[offending]);
                memmove(tickets->entries + offending, tickets->entries + offending + 1,
                        sizeof(*tickets->entries) * (tickets->size - offending - 1));
                --tickets->size;
            } else {
                ++offending;
            }
        } while (offending < tickets->size - 1);
    }
    if (tickets->size >= 256)
        h2o_fatal("no space for unique QUIC key identifier");


    has_valid_ticket = find_ticket_for_encryption(tickets, now) != ((void*)0);
    if (!has_valid_ticket || (tickets->entries[0]->not_before + conf.lifetime / 4 < now)) {
        uint64_t not_before = has_valid_ticket ? now + 60 : now;
        struct st_session_ticket_t *ticket = new_ticket(conf.ticket.vars.generating.cipher, conf.ticket.vars.generating.md,
                                                        not_before, not_before + conf.lifetime - 1, 1);

        while (1) {
            size_t i;
            for (i = 0; i < tickets->size; ++i)
                if (tickets->entries[i]->name[0] == ticket->name[0])
                    break;
            if (i == tickets->size)
                break;
            ++ticket->name[0];
        }
        h2o_vector_reserve(((void*)0), tickets, tickets->size + 1);
        memmove(tickets->entries + 1, tickets->entries, sizeof(tickets->entries[0]) * tickets->size);
        ++tickets->size;
        tickets->entries[0] = ticket;
        altered = 1;
    }

    return altered;
}
