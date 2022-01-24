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
struct TYPE_2__ {int /*<<< orphan*/  ipc_socket_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_REASON_EXIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* shmlogname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void) {
    if (*shmlogname != '\0') {
        FUNC3(stderr, "Closing SHM log \"%s\"\n", shmlogname);
        FUNC2(stderr);
        FUNC5(shmlogname);
    }
    FUNC4(SHUTDOWN_REASON_EXIT, -1);
    FUNC6(config.ipc_socket_path);
    FUNC7(conn);

/* We need ev >= 4 for the following code. Since it is not *that* important (it
 * only makes sure that there are no i3-nagbar instances left behind) we still
 * support old systems with libev 3. */
#if EV_VERSION_MAJOR >= 4
    ev_loop_destroy(main_loop);
#endif

#ifdef I3_ASAN_ENABLED
    __lsan_do_leak_check();
#endif
}