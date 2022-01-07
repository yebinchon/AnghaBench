
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_prepare {int dummy; } ;
struct ev_io {int dummy; } ;
typedef int placeholder_state ;


 int EV_READ ;
 int EXIT_FAILURE ;
 int TAILQ_EMPTY (int *) ;
 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int *) ;
 int __lsan_do_leak_check () ;
 int errx (int ,char*) ;
 int ev_io_init (int *,int ,int ,int ) ;
 int ev_io_start (int ,int *) ;
 int ev_io_stop (int ,int *) ;
 int ev_prepare_init (int *,int ) ;
 int ev_prepare_start (int ,int *) ;
 int ev_prepare_stop (int ,int *) ;
 int free (int *) ;
 int main_loop ;
 int * restore_conn ;
 int restore_xcb_got_event ;
 int restore_xcb_prepare_cb ;
 int * scalloc (int,int) ;
 int state_head ;
 int * xcb_connect (int *,int*) ;
 scalar_t__ xcb_connection_has_error (int *) ;
 int xcb_disconnect (int *) ;
 int xcb_get_file_descriptor (int *) ;
 int * xcb_prepare ;
 int * xcb_watcher ;

void restore_connect(void) {
    if (restore_conn != ((void*)0)) {


        ev_io_stop(main_loop, xcb_watcher);
        ev_prepare_stop(main_loop, xcb_prepare);

        placeholder_state *state;
        while (!TAILQ_EMPTY(&state_head)) {
            state = TAILQ_FIRST(&state_head);
            TAILQ_REMOVE(&state_head, state, state);
            free(state);
        }





        xcb_disconnect(restore_conn);
        free(xcb_watcher);
        free(xcb_prepare);
    }

    int screen;
    restore_conn = xcb_connect(((void*)0), &screen);
    if (restore_conn == ((void*)0) || xcb_connection_has_error(restore_conn)) {
        if (restore_conn != ((void*)0)) {
            xcb_disconnect(restore_conn);
        }



        errx(EXIT_FAILURE, "Cannot open display");
    }

    xcb_watcher = scalloc(1, sizeof(struct ev_io));
    xcb_prepare = scalloc(1, sizeof(struct ev_prepare));

    ev_io_init(xcb_watcher, restore_xcb_got_event, xcb_get_file_descriptor(restore_conn), EV_READ);
    ev_io_start(main_loop, xcb_watcher);

    ev_prepare_init(xcb_prepare, restore_xcb_prepare_cb);
    ev_prepare_start(main_loop, xcb_prepare);
}
