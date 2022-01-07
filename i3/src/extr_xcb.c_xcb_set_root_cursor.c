
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_cursor_t ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ xcb; } ;
struct TYPE_7__ {TYPE_2__ specific; } ;
typedef TYPE_3__ i3Font ;


 int XCB_CW_CURSOR ;
 int conn ;
 TYPE_3__ load_font (char*,int) ;
 int root ;
 int xcb_change_window_attributes (int ,int ,int ,int *) ;
 int xcb_create_glyph_cursor (int ,int ,int ,int ,int,int,int ,int ,int ,int,int,int) ;
 int xcb_flush (int ) ;
 int xcb_free_cursor (int ,int ) ;
 int xcb_generate_id (int ) ;
 int xcursor_get_xcb_cursor (int) ;

void xcb_set_root_cursor(int cursor) {
    xcb_cursor_t cursor_id = xcb_generate_id(conn);
    i3Font cursor_font = load_font("cursor", 0);
    int xcb_cursor = xcursor_get_xcb_cursor(cursor);
    xcb_create_glyph_cursor(conn, cursor_id, cursor_font.specific.xcb.id,
                            cursor_font.specific.xcb.id, xcb_cursor, xcb_cursor + 1, 0, 0, 0,
                            65535, 65535, 65535);
    xcb_change_window_attributes(conn, root, XCB_CW_CURSOR, &cursor_id);
    xcb_free_cursor(conn, cursor_id);
    xcb_flush(conn);
}
