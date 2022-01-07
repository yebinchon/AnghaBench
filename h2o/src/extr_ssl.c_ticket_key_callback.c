
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_session_ticket_t {scalar_t__ not_before; int hmac; int cipher; int name; } ;
struct TYPE_4__ {size_t size; struct st_session_ticket_t** entries; } ;
struct TYPE_3__ {int rwlock; TYPE_2__ tickets; } ;
typedef int HMAC_CTX ;
typedef int EVP_CIPHER_CTX ;


 int EVP_DecryptInit_ex (int *,int ,int *,int ,unsigned char*) ;
 int EVP_EncryptInit_ex (int *,int ,int *,int ,unsigned char*) ;
 int EVP_MAX_IV_LENGTH ;
 int EVP_MD_block_size (int ) ;
 int EVP_aes_256_cbc () ;
 int EVP_sha256 () ;
 int HMAC_Init_ex (int *,int ,int ,int ,int *) ;
 int RAND_bytes (unsigned char*,int ) ;
 int UINT64_MAX ;
 int assert (int) ;
 struct st_session_ticket_t* find_ticket_for_encryption (TYPE_2__*,scalar_t__) ;
 int free_ticket (struct st_session_ticket_t*) ;
 scalar_t__ memcmp (int ,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 struct st_session_ticket_t* new_ticket (int ,int ,int ,int ,int) ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int session_ticket_get_cipher_key (struct st_session_ticket_t*) ;
 int session_ticket_get_hmac_key (struct st_session_ticket_t*) ;
 TYPE_1__ session_tickets ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int ticket_key_callback(unsigned char *key_name, unsigned char *iv, EVP_CIPHER_CTX *ctx, HMAC_CTX *hctx, int enc)
{
    int ret;
    pthread_rwlock_rdlock(&session_tickets.rwlock);

    if (enc) {
        RAND_bytes(iv, EVP_MAX_IV_LENGTH);
        struct st_session_ticket_t *ticket = find_ticket_for_encryption(&session_tickets.tickets, time(((void*)0))), *temp_ticket = ((void*)0);
        if (ticket != ((void*)0)) {
        } else {


            ticket = temp_ticket = new_ticket(EVP_aes_256_cbc(), EVP_sha256(), 0, UINT64_MAX, 1);
        }
        memcpy(key_name, ticket->name, sizeof(ticket->name));
        ret = EVP_EncryptInit_ex(ctx, ticket->cipher, ((void*)0), session_ticket_get_cipher_key(ticket), iv);
        assert(ret);
        ret = HMAC_Init_ex(hctx, session_ticket_get_hmac_key(ticket), EVP_MD_block_size(ticket->hmac), ticket->hmac, ((void*)0));
        assert(ret);
        if (temp_ticket != ((void*)0))
            free_ticket(ticket);
        ret = 1;
    } else {
        struct st_session_ticket_t *ticket;
        size_t i;
        for (i = 0; i != session_tickets.tickets.size; ++i) {
            ticket = session_tickets.tickets.entries[i];
            if (memcmp(ticket->name, key_name, sizeof(ticket->name)) == 0)
                goto Found;
        }

        ret = 0;
        goto Exit;
    Found:
        ret = EVP_DecryptInit_ex(ctx, ticket->cipher, ((void*)0), session_ticket_get_cipher_key(ticket), iv);
        assert(ret);
        ret = HMAC_Init_ex(hctx, session_ticket_get_hmac_key(ticket), EVP_MD_block_size(ticket->hmac), ticket->hmac, ((void*)0));
        assert(ret);

        if (i != 0 && session_tickets.tickets.entries[i - 1]->not_before <= time(((void*)0)))
            ret = 2;
        else
            ret = 1;
    }

Exit:
    pthread_rwlock_unlock(&session_tickets.rwlock);
    return ret;
}
