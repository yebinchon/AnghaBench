#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char xcb_get_property_reply_t ;
struct TYPE_3__ {char* role; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 

void FUNC7(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == NULL || FUNC6(prop) == 0) {
        FUNC0("WM_WINDOW_ROLE not set.\n");
        FUNC1(prop);
        return;
    }

    char *new_role;
    FUNC4(&new_role, "%.*s", FUNC6(prop),
              (char *)FUNC5(prop));
    FUNC1(win->role);
    win->role = new_role;
    FUNC2("WM_WINDOW_ROLE changed to \"%s\"\n", win->role);

    FUNC3(prop);
}