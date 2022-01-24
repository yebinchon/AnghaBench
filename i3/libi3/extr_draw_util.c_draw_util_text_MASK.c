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
struct TYPE_4__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  visual_type; int /*<<< orphan*/  gc; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ surface_t ;
typedef  int /*<<< orphan*/  i3String ;
typedef  int /*<<< orphan*/  color_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(i3String *text, surface_t *surface, color_t fg_color, color_t bg_color, int x, int y, int max_width) {
    FUNC1(surface);

    /* Flush any changes before we draw the text as this might use XCB directly. */
    FUNC0(surface->surface);

    FUNC4(surface->gc, fg_color, bg_color);
    FUNC3(text, surface->id, surface->gc, surface->visual_type, x, y, max_width);

    /* Notify cairo that we (possibly) used another way to draw on the surface. */
    FUNC2(surface->surface);
}