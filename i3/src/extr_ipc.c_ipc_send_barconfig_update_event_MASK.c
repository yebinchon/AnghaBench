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
typedef  int /*<<< orphan*/  ylength ;
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Barconfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I3_IPC_EVENT_BARCONFIG_UPDATE ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  get_buf ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(Barconfig *barconfig) {
    FUNC0("Issue barconfig_update event for id = %s\n", barconfig->id);
    FUNC3(LC_NUMERIC, "C");
    yajl_gen gen = FUNC5();

    FUNC1(gen, barconfig);

    const unsigned char *payload;
    ylength length;
    FUNC4(get_buf, &payload, &length);

    FUNC2("barconfig_update", I3_IPC_EVENT_BARCONFIG_UPDATE, (const char *)payload);
    FUNC4(free);
    FUNC3(LC_NUMERIC, "");
}