
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ fullscreen_mode_t ;
struct TYPE_7__ {scalar_t__ fullscreen_mode; TYPE_1__* window; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_2__ Con ;


 int A__NET_WM_STATE ;
 int A__NET_WM_STATE_FULLSCREEN ;
 scalar_t__ CF_NONE ;
 int DLOG (char*,TYPE_2__*,...) ;
 int conn ;
 int ipc_send_window_event (char*,TYPE_2__*) ;
 int xcb_add_property_atom (int ,int ,int ,int ) ;
 int xcb_remove_property_atom (int ,int ,int ,int ) ;

__attribute__((used)) static void con_set_fullscreen_mode(Con *con, fullscreen_mode_t fullscreen_mode) {
    con->fullscreen_mode = fullscreen_mode;

    DLOG("mode now: %d\n", con->fullscreen_mode);


    ipc_send_window_event("fullscreen_mode", con);




    if (con->window == ((void*)0))
        return;

    if (con->fullscreen_mode != CF_NONE) {
        DLOG("Setting _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\n", con, con->window->id);
        xcb_add_property_atom(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_FULLSCREEN);
    } else {
        DLOG("Removing _NET_WM_STATE_FULLSCREEN for con = %p / window = %d.\n", con, con->window->id);
        xcb_remove_property_atom(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_FULLSCREEN);
    }
}
