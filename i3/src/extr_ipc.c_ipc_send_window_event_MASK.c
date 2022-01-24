#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ylength ;
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_7__ {TYPE_1__* window; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I3_IPC_EVENT_WINDOW ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  XCB_WINDOW_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  get_buf ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(const char *property, Con *con) {
    FUNC0("Issue IPC window %s event (con = %p, window = 0x%08x)\n",
         property, con, (con->window ? con->window->id : XCB_WINDOW_NONE));

    FUNC3(LC_NUMERIC, "C");
    yajl_gen gen = FUNC5();

    FUNC4(map_open);

    FUNC6("change");
    FUNC6(property);

    FUNC6("container");
    FUNC1(gen, con, false);

    FUNC4(map_close);

    const unsigned char *payload;
    ylength length;
    FUNC4(get_buf, &payload, &length);

    FUNC2("window", I3_IPC_EVENT_WINDOW, (const char *)payload);
    FUNC4(free);
    FUNC3(LC_NUMERIC, "");
}