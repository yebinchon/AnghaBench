
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_session_ticket_t {unsigned char* keybuf; } ;



__attribute__((used)) static unsigned char *session_ticket_get_cipher_key(struct st_session_ticket_t *ticket)
{
    return ticket->keybuf;
}
