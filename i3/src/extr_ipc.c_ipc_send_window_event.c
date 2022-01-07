
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ylength ;
typedef int yajl_gen ;
struct TYPE_7__ {TYPE_1__* window; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_2__ Con ;


 int DLOG (char*,char const*,TYPE_2__*,int ) ;
 int I3_IPC_EVENT_WINDOW ;
 int LC_NUMERIC ;
 int XCB_WINDOW_NONE ;
 int dump_node (int ,TYPE_2__*,int) ;
 int free ;
 int get_buf ;
 int ipc_send_event (char*,int ,char const*) ;
 int map_close ;
 int map_open ;
 int setlocale (int ,char*) ;
 int y (int ,...) ;
 int ygenalloc () ;
 int ystr (char const*) ;

void ipc_send_window_event(const char *property, Con *con) {
    DLOG("Issue IPC window %s event (con = %p, window = 0x%08x)\n",
         property, con, (con->window ? con->window->id : XCB_WINDOW_NONE));

    setlocale(LC_NUMERIC, "C");
    yajl_gen gen = ygenalloc();

    y(map_open);

    ystr("change");
    ystr(property);

    ystr("container");
    dump_node(gen, con, 0);

    y(map_close);

    const unsigned char *payload;
    ylength length;
    y(get_buf, &payload, &length);

    ipc_send_event("window", I3_IPC_EVENT_WINDOW, (const char *)payload);
    y(free);
    setlocale(LC_NUMERIC, "");
}
