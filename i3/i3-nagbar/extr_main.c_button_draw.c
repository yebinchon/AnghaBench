
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int x; int label; } ;
typedef TYPE_1__ button_t ;
struct TYPE_5__ {scalar_t__ height; } ;


 int BTN_BORDER ;
 int BTN_PADDING ;
 int MSG_PADDING ;
 int bar ;
 int color_border ;
 int color_button_background ;
 int color_text ;
 int draw_util_rectangle (int *,int ,int,int,int,scalar_t__) ;
 int draw_util_text (int ,int *,int ,int ,int,int,int) ;
 TYPE_2__ font ;
 int predict_text_width (int ) ;

__attribute__((used)) static int button_draw(button_t *button, int position) {
    int text_width = predict_text_width(button->label);
    button->width = text_width + 2 * BTN_PADDING + 2 * BTN_BORDER;
    button->x = position - button->width;


    draw_util_rectangle(&bar, color_border,
                        position - button->width,
                        MSG_PADDING - BTN_PADDING - BTN_BORDER,
                        button->width,
                        font.height + 2 * BTN_PADDING + 2 * BTN_BORDER);

    draw_util_rectangle(&bar, color_button_background,
                        position - button->width + BTN_BORDER,
                        MSG_PADDING - BTN_PADDING,
                        text_width + 2 * BTN_PADDING,
                        font.height + 2 * BTN_PADDING);

    draw_util_text(button->label, &bar, color_text, color_button_background,
                   position - button->width + BTN_BORDER + BTN_PADDING,
                   MSG_PADDING,
                   200);
    return button->width;
}
