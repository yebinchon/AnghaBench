#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct deco_render_params {TYPE_2__* color; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  y; scalar_t__ width; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_1__* parent; TYPE_3__ deco_rect; } ;
struct TYPE_8__ {int /*<<< orphan*/  background; } ;
struct TYPE_7__ {int /*<<< orphan*/  frame_buffer; } ;
typedef  TYPE_3__ Rect ;
typedef  TYPE_4__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct deco_render_params*) ; 

__attribute__((used)) static void FUNC5(Con *con, struct deco_render_params *p) {
    FUNC0(con->parent != NULL);

    Rect *dr = &(con->deco_rect);

    /* Redraw the right border to cut off any text that went past it.
     * This is necessary when the text was drawn using XCB since cutting text off
     * automatically does not work there. For pango rendering, this isn't necessary. */
    if (!FUNC2()) {
        /* We actually only redraw the far right two pixels as that is the
         * distance we keep from the edge (not the entire border width).
         * Redrawing the entire border would cause text to be cut off. */
        FUNC1(&(con->parent->frame_buffer), p->color->background,
                            dr->x + dr->width - 2 * FUNC3(1),
                            dr->y,
                            2 * FUNC3(1),
                            dr->height);
    }

    /* Redraw the border. */
    FUNC4(con, p);
}