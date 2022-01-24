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
struct TYPE_5__ {int /*<<< orphan*/  cr; int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__ surface_t ;
typedef  int /*<<< orphan*/  color_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC7(surface_t *surface, color_t color) {
    FUNC1(surface);

    FUNC4(surface->cr);

    /* Using the SOURCE operator will copy both color and alpha information directly
     * onto the surface rather than blending it. This is a bit more efficient and
     * allows better color control for the user when using opacity. */
    FUNC5(surface->cr, CAIRO_OPERATOR_SOURCE);
    FUNC6(surface, color);

    FUNC2(surface->cr);

    /* Make sure we flush the surface for any text drawing operations that could follow.
     * Since we support drawing text via XCB, we need this. */
    FUNC0(surface->surface);

    FUNC3(surface->cr);
}