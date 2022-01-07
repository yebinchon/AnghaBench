
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_session_ticket_t {int keybuf; int hmac; int cipher; } ;


 int EVP_CIPHER_key_length (int ) ;
 int EVP_MD_block_size (int ) ;
 int free (struct st_session_ticket_t*) ;
 int h2o_mem_set_secure (int ,int ,int) ;

__attribute__((used)) static void free_ticket(struct st_session_ticket_t *ticket)
{
    int key_len = EVP_CIPHER_key_length(ticket->cipher), block_size = EVP_MD_block_size(ticket->hmac);
    h2o_mem_set_secure(ticket->keybuf, 0, key_len + block_size);
    free(ticket);
}
