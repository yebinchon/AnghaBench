
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {TYPE_1__ bar; } ;
typedef TYPE_2__ i3_output ;


 scalar_t__ XCB_NONE ;
 int kick_tray_clients (TYPE_2__*) ;
 int xcb_connection ;
 int xcb_destroy_window (int ,scalar_t__) ;

void destroy_window(i3_output *output) {
    if (output == ((void*)0)) {
        return;
    }
    if (output->bar.id == XCB_NONE) {
        return;
    }

    kick_tray_clients(output);
    xcb_destroy_window(xcb_connection, output->bar.id);
    output->bar.id = XCB_NONE;
}
