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

/* Variables and functions */
 int /*<<< orphan*/  A_I3_SHMLOG_PATH ; 
 int /*<<< orphan*/  A_UTF8_STRING ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  root ; 
 char* shmlogname ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    if (*shmlogname == '\0') {
        FUNC2(conn, root, A_I3_SHMLOG_PATH);
    } else {
        FUNC1(conn, XCB_PROP_MODE_REPLACE, root,
                            A_I3_SHMLOG_PATH, A_UTF8_STRING, 8,
                            FUNC0(shmlogname), shmlogname);
    }
}