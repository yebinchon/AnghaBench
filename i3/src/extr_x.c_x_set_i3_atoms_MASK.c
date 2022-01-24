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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_I3_CONFIG_PATH ; 
 int /*<<< orphan*/  A_I3_PID ; 
 int /*<<< orphan*/  A_I3_SOCKET_PATH ; 
 int /*<<< orphan*/  A_UTF8_STRING ; 
 int /*<<< orphan*/  XCB_ATOM_CARDINAL ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/ * current_configpath ; 
 int /*<<< orphan*/ * current_socketpath ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  root ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

void FUNC4(void) {
    pid_t pid = FUNC0();
    FUNC3(conn, XCB_PROP_MODE_REPLACE, root, A_I3_SOCKET_PATH, A_UTF8_STRING, 8,
                        (current_socketpath == NULL ? 0 : FUNC1(current_socketpath)),
                        current_socketpath);
    FUNC3(conn, XCB_PROP_MODE_REPLACE, root, A_I3_PID, XCB_ATOM_CARDINAL, 32, 1, &pid);
    FUNC3(conn, XCB_PROP_MODE_REPLACE, root, A_I3_CONFIG_PATH, A_UTF8_STRING, 8,
                        FUNC1(current_configpath), current_configpath);
    FUNC2();
}