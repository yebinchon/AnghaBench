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
typedef  int /*<<< orphan*/  xcb_shape_sk_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ frame; int /*<<< orphan*/  window; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  XCB_PIXMAP_NONE ; 
 int /*<<< orphan*/  XCB_SHAPE_SO_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Con *con, xcb_shape_sk_t shape_kind) {
    FUNC0(con->window);

    FUNC1(conn, XCB_SHAPE_SO_SET, shape_kind, con->frame.id, 0, 0, XCB_PIXMAP_NONE);
}