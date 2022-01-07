
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* xcb_window_t ;
typedef int xcb_void_cookie_t ;
typedef void* xcb_visualid_t ;
struct TYPE_11__ {int error_code; } ;
typedef TYPE_3__ xcb_generic_error_t ;
typedef void* xcb_cursor_t ;
typedef int xcb_connection_t ;
typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {TYPE_1__ xcb; } ;
struct TYPE_12__ {TYPE_2__ specific; } ;
typedef TYPE_4__ i3Font ;
typedef enum xcursor_cursor_t { ____Placeholder_xcursor_cursor_t } xcursor_cursor_t ;
struct TYPE_13__ {int height; int width; int y; int x; } ;
typedef TYPE_5__ Rect ;


 int ELOG (char*,int ) ;
 void* XCB_COPY_FROM_PARENT ;
 void* XCB_CW_CURSOR ;
 scalar_t__ XCB_WINDOW_CLASS_INPUT_ONLY ;
 TYPE_4__ load_font (char*,int) ;
 int root ;
 int xcb_change_window_attributes (int *,void*,void*,void**) ;
 int xcb_create_glyph_cursor (int *,void*,int ,int ,int,int,int ,int ,int ,int,int,int) ;
 int xcb_create_window (int *,scalar_t__,void*,int ,int ,int ,int ,int ,int ,scalar_t__,void*,void*,void**) ;
 int xcb_free_cursor (int *,void*) ;
 void* xcb_generate_id (int *) ;
 int xcb_map_window (int *,void*) ;
 TYPE_3__* xcb_request_check (int *,int ) ;
 void* xcursor_get_cursor (int) ;
 int xcursor_get_xcb_cursor (int) ;
 scalar_t__ xcursor_supported ;

xcb_window_t create_window(xcb_connection_t *conn, Rect dims,
                           uint16_t depth, xcb_visualid_t visual, uint16_t window_class,
                           enum xcursor_cursor_t cursor, bool map, uint32_t mask, uint32_t *values) {
    xcb_window_t result = xcb_generate_id(conn);



    if (window_class == XCB_WINDOW_CLASS_INPUT_ONLY) {
        depth = XCB_COPY_FROM_PARENT;
        visual = XCB_COPY_FROM_PARENT;
    }

    xcb_void_cookie_t gc_cookie = xcb_create_window(conn,
                                                    depth,
                                                    result,
                                                    root,
                                                    dims.x, dims.y, dims.width, dims.height,
                                                    0,
                                                    window_class,
                                                    visual,
                                                    mask,
                                                    values);

    xcb_generic_error_t *error = xcb_request_check(conn, gc_cookie);
    if (error != ((void*)0)) {
        ELOG("Could not create window. Error code: %d.\n", error->error_code);
    }


    if (xcursor_supported) {
        mask = XCB_CW_CURSOR;
        values[0] = xcursor_get_cursor(cursor);
        xcb_change_window_attributes(conn, result, mask, values);
    } else {
        xcb_cursor_t cursor_id = xcb_generate_id(conn);
        i3Font cursor_font = load_font("cursor", 0);
        int xcb_cursor = xcursor_get_xcb_cursor(cursor);
        xcb_create_glyph_cursor(conn, cursor_id, cursor_font.specific.xcb.id,
                                cursor_font.specific.xcb.id, xcb_cursor, xcb_cursor + 1, 0, 0, 0,
                                65535, 65535, 65535);
        xcb_change_window_attributes(conn, result, XCB_CW_CURSOR, &cursor_id);
        xcb_free_cursor(conn, cursor_id);
    }


    if (map)
        xcb_map_window(conn, result);

    return result;
}
