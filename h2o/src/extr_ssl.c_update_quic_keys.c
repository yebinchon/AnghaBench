
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_session_ticket_t {int hmac; int cipher; int keybuf; int * name; } ;
struct st_quic_keyset_t {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; struct st_quic_keyset_t* entries; } ;
struct TYPE_7__ {unsigned int generation; TYPE_4__ keys; } ;
struct TYPE_5__ {scalar_t__ size; struct st_session_ticket_t** entries; } ;
struct TYPE_6__ {unsigned int generation; int rwlock; TYPE_1__ tickets; } ;


 scalar_t__ EVP_CIPHER_key_length (int ) ;
 scalar_t__ EVP_MD_block_size (int ) ;
 int assert (int) ;
 int dispose_keyset (struct st_quic_keyset_t*) ;
 int h2o_vector_reserve (int *,TYPE_4__*,scalar_t__) ;
 int init_keyset (struct st_quic_keyset_t*,int ,int ) ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int ptls_iovec_init (int ,scalar_t__) ;
 TYPE_3__ quic_keys ;
 TYPE_2__ session_tickets ;

__attribute__((used)) static struct st_quic_keyset_t *update_quic_keys(void)
{
    unsigned new_generation;

    while ((new_generation = session_tickets.generation) != quic_keys.generation) {

        while (quic_keys.keys.size != 0)
            dispose_keyset(quic_keys.keys.entries + --quic_keys.keys.size);


        pthread_rwlock_rdlock(&session_tickets.rwlock);
        assert(session_tickets.tickets.size != 0);
        h2o_vector_reserve(((void*)0), &quic_keys.keys, session_tickets.tickets.size);
        for (; quic_keys.keys.size != session_tickets.tickets.size; ++quic_keys.keys.size) {
            struct st_session_ticket_t *ticket = session_tickets.tickets.entries[quic_keys.keys.size];
            init_keyset(quic_keys.keys.entries + quic_keys.keys.size, ticket->name[0],
                        ptls_iovec_init(ticket->keybuf, EVP_CIPHER_key_length(ticket->cipher) + EVP_MD_block_size(ticket->hmac)));
        }
        pthread_rwlock_unlock(&session_tickets.rwlock);


        quic_keys.generation = new_generation;
    }

    return quic_keys.keys.entries;
}
