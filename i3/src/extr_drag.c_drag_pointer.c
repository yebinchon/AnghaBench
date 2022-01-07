
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_15__ {int error_code; } ;
typedef TYPE_1__ xcb_grab_pointer_reply_t ;
typedef int xcb_grab_pointer_cookie_t ;
typedef TYPE_1__ xcb_grab_keyboard_reply_t ;
typedef int xcb_grab_keyboard_cookie_t ;
typedef TYPE_1__ xcb_generic_error_t ;
typedef int xcb_cursor_t ;
typedef int xcb_button_press_event_t ;
struct TYPE_16__ {struct drag_x11_cb* data; } ;
struct drag_x11_cb {int threshold_exceeded; void const* extra; int result; int old_rect; TYPE_4__ prepare; int xcursor; int callback; int const* event; TYPE_5__* con; } ;
typedef TYPE_4__ ev_prepare ;
typedef int drag_result_t ;
typedef int callback_t ;
struct TYPE_17__ {int rect; } ;
typedef TYPE_5__ Con ;


 int DRAGGING ;
 int DRAG_ABORT ;
 int ELOG (char*,int ) ;
 int XCB_CURRENT_TIME ;
 int XCB_EVENT_MASK_BUTTON_RELEASE ;
 int XCB_EVENT_MASK_POINTER_MOTION ;
 int XCB_GRAB_MODE_ASYNC ;
 int XCB_NONE ;
 int conn ;
 int ev_loop (int ,int ) ;
 int ev_prepare_init (TYPE_4__*,int ) ;
 int ev_prepare_start (int ,TYPE_4__*) ;
 int ev_prepare_stop (int ,TYPE_4__*) ;
 int free (TYPE_1__*) ;
 int main_loop ;
 int main_set_x11_cb (int) ;
 int root ;
 int xcb_drag_prepare_cb ;
 int xcb_flush (int ) ;
 int xcb_grab_keyboard (int ,int,int ,int ,int ,int ) ;
 TYPE_1__* xcb_grab_keyboard_reply (int ,int ,TYPE_1__**) ;
 int xcb_grab_pointer (int ,int,int ,int,int ,int ,int ,int ,int ) ;
 TYPE_1__* xcb_grab_pointer_reply (int ,int ,TYPE_1__**) ;
 int xcb_ungrab_keyboard (int ,int ) ;
 int xcb_ungrab_pointer (int ,int ) ;
 int xcursor_get_cursor (int) ;
 scalar_t__ xcursor_supported ;

drag_result_t drag_pointer(Con *con, const xcb_button_press_event_t *event,
                           xcb_window_t confine_to, int cursor,
                           bool use_threshold, callback_t callback,
                           const void *extra) {
    xcb_cursor_t xcursor = (cursor && xcursor_supported) ? xcursor_get_cursor(cursor) : XCB_NONE;


    xcb_grab_pointer_cookie_t cookie;
    xcb_grab_pointer_reply_t *reply;
    xcb_generic_error_t *error;

    cookie = xcb_grab_pointer(conn,
                              0,
                              root,
                              XCB_EVENT_MASK_BUTTON_RELEASE | XCB_EVENT_MASK_POINTER_MOTION,
                              XCB_GRAB_MODE_ASYNC,
                              XCB_GRAB_MODE_ASYNC,
                              confine_to,
                              use_threshold ? XCB_NONE : xcursor,
                              XCB_CURRENT_TIME);

    if ((reply = xcb_grab_pointer_reply(conn, cookie, &error)) == ((void*)0)) {
        ELOG("Could not grab pointer (error_code = %d)\n", error->error_code);
        free(error);
        return DRAG_ABORT;
    }

    free(reply);


    xcb_grab_keyboard_cookie_t keyb_cookie;
    xcb_grab_keyboard_reply_t *keyb_reply;

    keyb_cookie = xcb_grab_keyboard(conn,
                                    0,
                                    root,
                                    XCB_CURRENT_TIME,
                                    XCB_GRAB_MODE_ASYNC,
                                    XCB_GRAB_MODE_ASYNC
    );

    if ((keyb_reply = xcb_grab_keyboard_reply(conn, keyb_cookie, &error)) == ((void*)0)) {
        ELOG("Could not grab keyboard (error_code = %d)\n", error->error_code);
        free(error);
        xcb_ungrab_pointer(conn, XCB_CURRENT_TIME);
        return DRAG_ABORT;
    }

    free(keyb_reply);


    struct drag_x11_cb loop = {
        .result = DRAGGING,
        .con = con,
        .event = event,
        .callback = callback,
        .threshold_exceeded = !use_threshold,
        .xcursor = xcursor,
        .extra = extra,
    };
    ev_prepare *prepare = &loop.prepare;
    if (con)
        loop.old_rect = con->rect;
    ev_prepare_init(prepare, xcb_drag_prepare_cb);
    prepare->data = &loop;
    main_set_x11_cb(0);
    ev_prepare_start(main_loop, prepare);

    ev_loop(main_loop, 0);

    ev_prepare_stop(main_loop, prepare);
    main_set_x11_cb(1);

    xcb_ungrab_keyboard(conn, XCB_CURRENT_TIME);
    xcb_ungrab_pointer(conn, XCB_CURRENT_TIME);
    xcb_flush(conn);

    return loop.result;
}
