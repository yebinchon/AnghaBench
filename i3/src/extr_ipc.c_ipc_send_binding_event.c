
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ylength ;
typedef int yajl_gen ;
struct TYPE_4__ {int keycode; int symbol; } ;
typedef TYPE_1__ Binding ;


 int DLOG (char*,char const*,int ,int ) ;
 int I3_IPC_EVENT_BINDING ;
 int LC_NUMERIC ;
 int dump_binding (int ,TYPE_1__*) ;
 int free ;
 int get_buf ;
 int ipc_send_event (char*,int ,char const*) ;
 int map_close ;
 int map_open ;
 int setlocale (int ,char*) ;
 int y (int ,...) ;
 int ygenalloc () ;
 int ystr (char const*) ;

void ipc_send_binding_event(const char *event_type, Binding *bind) {
    DLOG("Issue IPC binding %s event (sym = %s, code = %d)\n", event_type, bind->symbol, bind->keycode);

    setlocale(LC_NUMERIC, "C");

    yajl_gen gen = ygenalloc();

    y(map_open);

    ystr("change");
    ystr(event_type);

    ystr("binding");
    dump_binding(gen, bind);

    y(map_close);

    const unsigned char *payload;
    ylength length;
    y(get_buf, &payload, &length);

    ipc_send_event("binding", I3_IPC_EVENT_BINDING, (const char *)payload);

    y(free);
    setlocale(LC_NUMERIC, "");
}
