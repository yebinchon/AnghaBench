
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yajl_gen ;
typedef int Con ;


 int LC_NUMERIC ;
 int dump_node (int ,int *,int) ;
 int map_close ;
 int map_open ;
 int null ;
 int setlocale (int ,char*) ;
 int y (int ) ;
 int ygenalloc () ;
 int ystr (char const*) ;

yajl_gen ipc_marshal_workspace_event(const char *change, Con *current, Con *old) {
    setlocale(LC_NUMERIC, "C");
    yajl_gen gen = ygenalloc();

    y(map_open);

    ystr("change");
    ystr(change);

    ystr("current");
    if (current == ((void*)0))
        y(null);
    else
        dump_node(gen, current, 0);

    ystr("old");
    if (old == ((void*)0))
        y(null);
    else
        dump_node(gen, old, 0);

    y(map_close);

    setlocale(LC_NUMERIC, "");

    return gen;
}
