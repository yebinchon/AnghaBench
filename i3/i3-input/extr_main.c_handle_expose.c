
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_expose_event_t ;
typedef int xcb_connection_t ;
typedef int i3String ;
typedef int color_t ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; } ;


 int BORDER ;
 scalar_t__ MAX_WIDTH ;
 int PADDING ;
 int draw_util_hex_to_color (char*) ;
 int draw_util_rectangle (TYPE_1__*,int ,int,int,scalar_t__,scalar_t__) ;
 int draw_util_text (int *,TYPE_1__*,int ,int ,int,int,scalar_t__) ;
 int glyphs_ucs ;
 int i3string_free (int *) ;
 int * i3string_from_ucs2 (int ,scalar_t__) ;
 scalar_t__ input_position ;
 int printf (char*) ;
 int * prompt ;
 int prompt_offset ;
 TYPE_1__ surface ;
 int xcb_flush (int *) ;

__attribute__((used)) static int handle_expose(void *data, xcb_connection_t *conn, xcb_expose_event_t *event) {
    printf("expose!\n");

    color_t border_color = draw_util_hex_to_color("#FF0000");
    color_t fg_color = draw_util_hex_to_color("#FFFFFF");
    color_t bg_color = draw_util_hex_to_color("#000000");

    int text_offset = BORDER + PADDING;


    draw_util_rectangle(&surface, border_color, 0, 0, surface.width, surface.height);


    draw_util_rectangle(&surface, bg_color, BORDER, BORDER, surface.width - 2 * BORDER, surface.height - 2 * BORDER);


    if (prompt != ((void*)0)) {
        draw_util_text(prompt, &surface, fg_color, bg_color, text_offset, text_offset, MAX_WIDTH - text_offset);
    }


    if (input_position > 0) {
        i3String *input = i3string_from_ucs2(glyphs_ucs, input_position);
        draw_util_text(input, &surface, fg_color, bg_color, text_offset + prompt_offset, text_offset, MAX_WIDTH - text_offset);
        i3string_free(input);
    }

    xcb_flush(conn);

    return 1;
}
