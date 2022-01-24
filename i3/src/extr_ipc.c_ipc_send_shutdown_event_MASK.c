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
typedef  int /*<<< orphan*/  ylength ;
typedef  int /*<<< orphan*/  yajl_gen ;
typedef  scalar_t__ shutdown_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  I3_IPC_EVENT_SHUTDOWN ; 
 scalar_t__ SHUTDOWN_REASON_EXIT ; 
 scalar_t__ SHUTDOWN_REASON_RESTART ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  get_buf ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(shutdown_reason_t reason) {
    yajl_gen gen = FUNC2();
    FUNC1(map_open);

    FUNC3("change");

    if (reason == SHUTDOWN_REASON_RESTART) {
        FUNC3("restart");
    } else if (reason == SHUTDOWN_REASON_EXIT) {
        FUNC3("exit");
    }

    FUNC1(map_close);

    const unsigned char *payload;
    ylength length;

    FUNC1(get_buf, &payload, &length);
    FUNC0("shutdown", I3_IPC_EVENT_SHUTDOWN, (const char *)payload);

    FUNC1(free);
}