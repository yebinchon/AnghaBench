
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int cursor ;
 int ev_io_stop (int ,int ) ;
 int ev_prepare_stop (int ,int ) ;
 int free_font () ;
 int free_outputs () ;
 int main_loop ;
 int xcb_aux_sync (int ) ;
 int xcb_connection ;
 int xcb_disconnect (int ) ;
 int xcb_flush (int ) ;
 int xcb_free_cursor (int ,int ) ;
 int xcb_io ;
 int xcb_prep ;

void clean_xcb(void) {
    free_outputs();

    free_font();

    xcb_free_cursor(xcb_connection, cursor);
    xcb_flush(xcb_connection);
    xcb_aux_sync(xcb_connection);
    xcb_disconnect(xcb_connection);

    ev_prepare_stop(main_loop, xcb_prep);
    ev_io_stop(main_loop, xcb_io);

    FREE(xcb_prep);
    FREE(xcb_io);
}
