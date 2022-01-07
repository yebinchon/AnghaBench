
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ buffer_size; scalar_t__ buffer; } ;
typedef TYPE_1__ ipc_client ;
struct TYPE_6__ {size_t size; int const type; int magic; } ;
typedef TYPE_2__ i3_ipc_header_t ;


 int ipc_push_pending (TYPE_1__*) ;
 int memcpy (scalar_t__,void const*,size_t const) ;
 scalar_t__ srealloc (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ipc_send_client_message(ipc_client *client, size_t size, const uint32_t message_type, const uint8_t *payload) {
    const i3_ipc_header_t header = {
        .magic = {'i', '3', '-', 'i', 'p', 'c'},
        .size = size,
        .type = message_type};
    const size_t header_size = sizeof(i3_ipc_header_t);
    const size_t message_size = header_size + size;

    const bool push_now = (client->buffer_size == 0);
    client->buffer = srealloc(client->buffer, client->buffer_size + message_size);
    memcpy(client->buffer + client->buffer_size, ((void *)&header), header_size);
    memcpy(client->buffer + client->buffer_size + header_size, payload, size);
    client->buffer_size += message_size;

    if (push_now) {
        ipc_push_pending(client);
    }
}
