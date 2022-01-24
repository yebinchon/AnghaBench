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
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_4__ {scalar_t__ input_type; char* symbol; char* command; int /*<<< orphan*/  keycode; } ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 scalar_t__ B_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  integer ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  null ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(yajl_gen gen, Binding *bind) {
    FUNC1(map_open);
    FUNC2("input_code");
    FUNC1(integer, bind->keycode);

    FUNC2("input_type");
    FUNC2((const char *)(bind->input_type == B_KEYBOARD ? "keyboard" : "mouse"));

    FUNC2("symbol");
    if (bind->symbol == NULL)
        FUNC1(null);
    else
        FUNC2(bind->symbol);

    FUNC2("command");
    FUNC2(bind->command);

    // This key is only provided for compatibility, new programs should use
    // event_state_mask instead.
    FUNC2("mods");
    FUNC0(gen, bind);

    FUNC2("event_state_mask");
    FUNC0(gen, bind);

    FUNC1(map_close);
}