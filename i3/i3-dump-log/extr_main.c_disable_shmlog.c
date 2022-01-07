
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EXIT_FAILURE ;
 int I3_IPC_MESSAGE_TYPE_COMMAND ;
 int I3_IPC_REPLY_TYPE_COMMAND ;
 int err (int ,char*) ;
 int free (int *) ;
 scalar_t__ ipc_recv_message (int ,int ,int *,int **) ;
 scalar_t__ ipc_send_message (int ,int ,int ,int *) ;
 int ipcfd ;
 int strlen (char const*) ;

__attribute__((used)) static void disable_shmlog(void) {
    const char *disablecmd = "debuglog off; shmlog off";
    if (ipc_send_message(ipcfd, strlen(disablecmd),
                         I3_IPC_MESSAGE_TYPE_COMMAND, (uint8_t *)disablecmd) != 0)
        err(EXIT_FAILURE, "IPC send");


    uint32_t reply_length = 0;
    uint8_t *reply = ((void*)0);
    if (ipc_recv_message(ipcfd, I3_IPC_REPLY_TYPE_COMMAND,
                         &reply_length, &reply) != 0) {
        err(EXIT_FAILURE, "IPC recv");
    }
    free(reply);
}
