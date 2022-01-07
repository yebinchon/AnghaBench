
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ylength ;
typedef int yajl_gen ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ Barconfig ;


 int DLOG (char*,int ) ;
 int I3_IPC_EVENT_BARCONFIG_UPDATE ;
 int LC_NUMERIC ;
 int dump_bar_config (int ,TYPE_1__*) ;
 int free ;
 int get_buf ;
 int ipc_send_event (char*,int ,char const*) ;
 int setlocale (int ,char*) ;
 int y (int ,...) ;
 int ygenalloc () ;

void ipc_send_barconfig_update_event(Barconfig *barconfig) {
    DLOG("Issue barconfig_update event for id = %s\n", barconfig->id);
    setlocale(LC_NUMERIC, "C");
    yajl_gen gen = ygenalloc();

    dump_bar_config(gen, barconfig);

    const unsigned char *payload;
    ylength length;
    y(get_buf, &payload, &length);

    ipc_send_event("barconfig_update", I3_IPC_EVENT_BARCONFIG_UPDATE, (const char *)payload);
    y(free);
    setlocale(LC_NUMERIC, "");
}
