#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_expose_event_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_5__ {int width; scalar_t__ height; } ;

/* Variables and functions */
 scalar_t__ BAR_BORDER ; 
 int BTN_BORDER ; 
 scalar_t__ BTN_GAP ; 
 int BTN_PADDING ; 
 scalar_t__ CLOSE_BTN_GAP ; 
 int MSG_PADDING ; 
 TYPE_1__ bar ; 
 int /*<<< orphan*/  btn_close ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int buttoncnt ; 
 int /*<<< orphan*/ * buttons ; 
 int /*<<< orphan*/  color_background ; 
 int /*<<< orphan*/  color_border_bottom ; 
 int /*<<< orphan*/  color_text ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  prompt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(xcb_connection_t *conn, xcb_expose_event_t *event) {
    /* draw background */
    FUNC1(&bar, color_background);
    /* draw message */
    FUNC3(prompt, &bar, color_text, color_background,
                   MSG_PADDING, MSG_PADDING,
                   bar.width - 2 * MSG_PADDING);

    int position = bar.width - (MSG_PADDING - BTN_BORDER - BTN_PADDING);

    /* render close button */
    position -= FUNC0(&btn_close, position);
    position -= CLOSE_BTN_GAP;

    /* render custom buttons */
    for (int i = 0; i < buttoncnt; i++) {
        position -= BTN_GAP;
        position -= FUNC0(&buttons[i], position);
    }

    /* border line at the bottom */
    FUNC2(&bar, color_border_bottom, 0, bar.height - BAR_BORDER, bar.width, BAR_BORDER);

    FUNC4(conn);
    return 1;
}