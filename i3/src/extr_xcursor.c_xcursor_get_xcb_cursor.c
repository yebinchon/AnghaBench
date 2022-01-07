
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xcursor_cursor_t { ____Placeholder_xcursor_cursor_t } xcursor_cursor_t ;


 int XCURSOR_CURSOR_MAX ;
 int assert (int) ;
 int* xcb_cursors ;

int xcursor_get_xcb_cursor(enum xcursor_cursor_t c) {
    assert(c < XCURSOR_CURSOR_MAX);
    return xcb_cursors[c];
}
