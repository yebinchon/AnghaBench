#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_3__ {int /*<<< orphan*/ * cr; int /*<<< orphan*/ * surface; int /*<<< orphan*/  gc; } ;
typedef  TYPE_1__ surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(xcb_connection_t *conn, surface_t *surface) {
    FUNC2(conn, surface->gc);
    FUNC1(surface->surface);
    FUNC0(surface->cr);

    /* We need to explicitly set these to NULL to avoid assertion errors in
     * cairo when calling this multiple times. This can happen, for example,
     * when setting the border of a window to none and then closing it. */
    surface->surface = NULL;
    surface->cr = NULL;
}