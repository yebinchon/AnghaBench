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
struct Binding_Keycode {struct Binding_Keycode* command; struct Binding_Keycode* symbol; int /*<<< orphan*/  keycodes_head; } ;
typedef  struct Binding_Keycode Binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Binding_Keycode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct Binding_Keycode* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct Binding_Keycode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keycodes ; 

void FUNC4(Binding *bind) {
    if (bind == NULL) {
        return;
    }

    while (!FUNC1(&(bind->keycodes_head))) {
        struct Binding_Keycode *first = FUNC2(&(bind->keycodes_head));
        FUNC3(&(bind->keycodes_head), first, keycodes);
        FUNC0(first);
    }

    FUNC0(bind->symbol);
    FUNC0(bind->command);
    FUNC0(bind);
}