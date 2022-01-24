#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_expose_event_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  i3String ;
typedef  int /*<<< orphan*/  color_t ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int BORDER ; 
 scalar_t__ MAX_WIDTH ; 
 int PADDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  glyphs_ucs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ input_position ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * prompt ; 
 int prompt_offset ; 
 TYPE_1__ surface ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *data, xcb_connection_t *conn, xcb_expose_event_t *event) {
    FUNC5("expose!\n");

    color_t border_color = FUNC0("#FF0000");
    color_t fg_color = FUNC0("#FFFFFF");
    color_t bg_color = FUNC0("#000000");

    int text_offset = BORDER + PADDING;

    /* draw border */
    FUNC1(&surface, border_color, 0, 0, surface.width, surface.height);

    /* draw background */
    FUNC1(&surface, bg_color, BORDER, BORDER, surface.width - 2 * BORDER, surface.height - 2 * BORDER);

    /* draw the prompt … */
    if (prompt != NULL) {
        FUNC2(prompt, &surface, fg_color, bg_color, text_offset, text_offset, MAX_WIDTH - text_offset);
    }

    /* … and the text */
    if (input_position > 0) {
        i3String *input = FUNC4(glyphs_ucs, input_position);
        FUNC2(input, &surface, fg_color, bg_color, text_offset + prompt_offset, text_offset, MAX_WIDTH - text_offset);
        FUNC3(input);
    }

    FUNC6(conn);

    return 1;
}