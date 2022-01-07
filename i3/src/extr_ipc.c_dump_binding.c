
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yajl_gen ;
struct TYPE_4__ {scalar_t__ input_type; char* symbol; char* command; int keycode; } ;
typedef TYPE_1__ Binding ;


 scalar_t__ B_KEYBOARD ;
 int dump_event_state_mask (int ,TYPE_1__*) ;
 int integer ;
 int map_close ;
 int map_open ;
 int null ;
 int y (int ,...) ;
 int ystr (char const*) ;

__attribute__((used)) static void dump_binding(yajl_gen gen, Binding *bind) {
    y(map_open);
    ystr("input_code");
    y(integer, bind->keycode);

    ystr("input_type");
    ystr((const char *)(bind->input_type == B_KEYBOARD ? "keyboard" : "mouse"));

    ystr("symbol");
    if (bind->symbol == ((void*)0))
        y(null);
    else
        ystr(bind->symbol);

    ystr("command");
    ystr(bind->command);



    ystr("mods");
    dump_event_state_mask(gen, bind);

    ystr("event_state_mask");
    dump_event_state_mask(gen, bind);

    y(map_close);
}
