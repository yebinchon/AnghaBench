#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XCB_BUTTON_MASK_ANY ; 
 int /*<<< orphan*/  XCB_GRAB_ANY ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(xcb_connection_t *conn) {
    FUNC0("Ungrabbing all keys\n");
    FUNC1(conn, XCB_GRAB_ANY, root, XCB_BUTTON_MASK_ANY);
}