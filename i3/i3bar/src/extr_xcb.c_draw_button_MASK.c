#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surface_t ;
typedef  int /*<<< orphan*/  i3String ;
typedef  int /*<<< orphan*/  color_t ;
struct TYPE_2__ {int height; } ;

/* Variables and functions */
 int bar_height ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_1__ font ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(surface_t *surface, color_t fg_color, color_t bg_color, color_t border_color,
                        int x, int width, int text_width, i3String *text) {
    int height = bar_height - 2 * FUNC2(1);

    /* Draw the border of the button. */
    FUNC0(surface, border_color, x, FUNC2(1), width, height);

    /* Draw the inside of the button. */
    FUNC0(surface, bg_color, x + FUNC2(1), 2 * FUNC2(1),
                        width - 2 * FUNC2(1), height - 2 * FUNC2(1));

    FUNC1(text, surface, fg_color, bg_color, x + (width - text_width) / 2,
                   bar_height / 2 - font.height / 2, text_width);
}