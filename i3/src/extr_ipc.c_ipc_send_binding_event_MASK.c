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
struct TYPE_4__ {int /*<<< orphan*/  keycode; int /*<<< orphan*/  symbol; } ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I3_IPC_EVENT_BINDING ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  get_buf ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(const char *event_type, Binding *bind) {
    FUNC0("Issue IPC binding %s event (sym = %s, code = %d)\n", event_type, bind->symbol, bind->keycode);

    FUNC3(LC_NUMERIC, "C");

    yajl_gen gen = FUNC5();

    FUNC4(map_open);

    FUNC6("change");
    FUNC6(event_type);

    FUNC6("binding");
    FUNC1(gen, bind);

    FUNC4(map_close);

    const unsigned char *payload;
    ylength length;
    FUNC4(get_buf, &payload, &length);

    FUNC2("binding", I3_IPC_EVENT_BINDING, (const char *)payload);

    FUNC4(free);
    FUNC3(LC_NUMERIC, "");
}