
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ylength ;
typedef int yajl_gen ;
typedef scalar_t__ shutdown_reason_t ;


 int I3_IPC_EVENT_SHUTDOWN ;
 scalar_t__ SHUTDOWN_REASON_EXIT ;
 scalar_t__ SHUTDOWN_REASON_RESTART ;
 int free ;
 int get_buf ;
 int ipc_send_event (char*,int ,char const*) ;
 int map_close ;
 int map_open ;
 int y (int ,...) ;
 int ygenalloc () ;
 int ystr (char*) ;

__attribute__((used)) static void ipc_send_shutdown_event(shutdown_reason_t reason) {
    yajl_gen gen = ygenalloc();
    y(map_open);

    ystr("change");

    if (reason == SHUTDOWN_REASON_RESTART) {
        ystr("restart");
    } else if (reason == SHUTDOWN_REASON_EXIT) {
        ystr("exit");
    }

    y(map_close);

    const unsigned char *payload;
    ylength length;

    y(get_buf, &payload, &length);
    ipc_send_event("shutdown", I3_IPC_EVENT_SHUTDOWN, (const char *)payload);

    y(free);
}
