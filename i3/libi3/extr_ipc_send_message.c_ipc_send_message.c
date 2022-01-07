
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int const size; int const type; int magic; } ;
typedef TYPE_1__ i3_ipc_header_t ;


 int writeall (int,void const*,int const) ;

int ipc_send_message(int sockfd, const uint32_t message_size,
                     const uint32_t message_type, const uint8_t *payload) {
    const i3_ipc_header_t header = {

        .magic = {'i', '3', '-', 'i', 'p', 'c'},
        .size = message_size,
        .type = message_type};

    if (writeall(sockfd, ((void *)&header), sizeof(i3_ipc_header_t)) == -1)
        return -1;

    if (writeall(sockfd, payload, message_size) == -1)
        return -1;

    return 0;
}
