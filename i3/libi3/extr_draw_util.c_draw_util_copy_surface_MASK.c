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

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double) ; 

void FUNC8(surface_t *src, surface_t *dest, double src_x, double src_y,
                            double dest_x, double dest_y, double width, double height) {
    FUNC1(src);
    FUNC1(dest);

    FUNC5(dest->cr);

    /* Using the SOURCE operator will copy both color and alpha information directly
     * onto the surface rather than blending it. This is a bit more efficient and
     * allows better color control for the user when using opacity. */
    FUNC6(dest->cr, CAIRO_OPERATOR_SOURCE);
    FUNC7(dest->cr, src->surface, dest_x - src_x, dest_y - src_y);

    FUNC3(dest->cr, dest_x, dest_y, width, height);
    FUNC2(dest->cr);

    /* Make sure we flush the surface for any text drawing operations that could follow.
     * Since we support drawing text via XCB, we need this. */
    FUNC0(src->surface);
    FUNC0(dest->surface);

    FUNC4(dest->cr);
}