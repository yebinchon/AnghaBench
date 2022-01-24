#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int width; int x; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ button_t ;
struct TYPE_5__ {scalar_t__ height; } ;

/* Variables and functions */
 int BTN_BORDER ; 
 int BTN_PADDING ; 
 int MSG_PADDING ; 
 int /*<<< orphan*/  bar ; 
 int /*<<< orphan*/  color_border ; 
 int /*<<< orphan*/  color_button_background ; 
 int /*<<< orphan*/  color_text ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_2__ font ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(button_t *button, int position) {
    int text_width = FUNC2(button->label);
    button->width = text_width + 2 * BTN_PADDING + 2 * BTN_BORDER;
    button->x = position - button->width;

    /* draw border */
    FUNC0(&bar, color_border,
                        position - button->width,
                        MSG_PADDING - BTN_PADDING - BTN_BORDER,
                        button->width,
                        font.height + 2 * BTN_PADDING + 2 * BTN_BORDER);
    /* draw background */
    FUNC0(&bar, color_button_background,
                        position - button->width + BTN_BORDER,
                        MSG_PADDING - BTN_PADDING,
                        text_width + 2 * BTN_PADDING,
                        font.height + 2 * BTN_PADDING);
    /* draw label */
    FUNC1(button->label, &bar, color_text, color_button_background,
                   position - button->width + BTN_BORDER + BTN_PADDING,
                   MSG_PADDING,
                   200);
    return button->width;
}