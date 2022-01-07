
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_t ;
typedef int ptls_save_ticket_t ;
struct TYPE_4__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
struct TYPE_5__ {int len; int base; } ;


 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 TYPE_2__ saved_ticket ;

__attribute__((used)) static int on_save_ticket(ptls_save_ticket_t *self, ptls_t *tls, ptls_iovec_t src)
{
    saved_ticket.base = malloc(src.len);
    memcpy(saved_ticket.base, src.base, src.len);
    saved_ticket.len = src.len;
    return 0;
}
