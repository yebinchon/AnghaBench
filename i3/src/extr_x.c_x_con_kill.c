
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
typedef TYPE_2__ Con ;


 int _x_con_kill (TYPE_2__*) ;
 int conn ;
 int xcb_destroy_window (int ,int ) ;

void x_con_kill(Con *con) {
    _x_con_kill(con);
    xcb_destroy_window(conn, con->frame.id);
}
