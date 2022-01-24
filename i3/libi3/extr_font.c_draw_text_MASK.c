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
typedef  int /*<<< orphan*/  xcb_visualtype_t ;
typedef  int /*<<< orphan*/  xcb_gcontext_t ;
typedef  int /*<<< orphan*/  xcb_drawable_t ;
typedef  int /*<<< orphan*/  i3String ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  FONT_TYPE_NONE 130 
#define  FONT_TYPE_PANGO 129 
#define  FONT_TYPE_XCB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * root_visual_type ; 
 TYPE_1__* savedFont ; 

void FUNC8(i3String *text, xcb_drawable_t drawable, xcb_gcontext_t gc,
               xcb_visualtype_t *visual, int x, int y, int max_width) {
    FUNC0(savedFont != NULL);
    if (visual == NULL) {
        visual = root_visual_type;
    }

    switch (savedFont->type) {
        case FONT_TYPE_NONE:
            /* Nothing to do */
            return;
        case FONT_TYPE_XCB:
            FUNC2(FUNC3(text), FUNC6(text),
                          drawable, gc, x, y);
            break;
        case FONT_TYPE_PANGO:
            /* Render the text using Pango */
            FUNC1(FUNC4(text), FUNC5(text),
                            drawable, visual, x, y, max_width, FUNC7(text));
            return;
    }
}