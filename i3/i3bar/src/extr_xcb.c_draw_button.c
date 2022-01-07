
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int surface_t ;
typedef int i3String ;
typedef int color_t ;
struct TYPE_2__ {int height; } ;


 int bar_height ;
 int draw_util_rectangle (int *,int ,int,int,int,int) ;
 int draw_util_text (int *,int *,int ,int ,int,int,int) ;
 TYPE_1__ font ;
 int logical_px (int) ;

__attribute__((used)) static void draw_button(surface_t *surface, color_t fg_color, color_t bg_color, color_t border_color,
                        int x, int width, int text_width, i3String *text) {
    int height = bar_height - 2 * logical_px(1);


    draw_util_rectangle(surface, border_color, x, logical_px(1), width, height);


    draw_util_rectangle(surface, bg_color, x + logical_px(1), 2 * logical_px(1),
                        width - 2 * logical_px(1), height - 2 * logical_px(1));

    draw_util_text(text, surface, fg_color, bg_color, x + (width - text_width) / 2,
                   bar_height / 2 - font.height / 2, text_width);
}
