
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ ipc_client ;


 int DLOG (char*,int ) ;
 int I3_IPC_REPLY_TYPE_COMMAND ;
 int ipc_push_pending (TYPE_1__*) ;
 int ipc_send_client_message (TYPE_1__*,int ,int ,int const*) ;
 int strlen (char const*) ;

void ipc_confirm_restart(ipc_client *client) {
    DLOG("ipc_confirm_restart(fd %d)\n", client->fd);
    static const char *reply = "[{\"success\":true}]";
    ipc_send_client_message(
        client, strlen(reply), I3_IPC_REPLY_TYPE_COMMAND,
        (const uint8_t *)reply);
    ipc_push_pending(client);
}
