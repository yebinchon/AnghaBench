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
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
struct TYPE_3__ {int /*<<< orphan*/ * class_class; int /*<<< orphan*/ * class_instance; } ;
typedef  TYPE_1__ i3Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (char*,size_t const) ; 
 int FUNC5 (char*,size_t const) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == NULL || FUNC7(prop) == 0) {
        FUNC0("WM_CLASS not set.\n");
        FUNC1(prop);
        return;
    }

    /* We cannot use asprintf here since this property contains two
     * null-terminated strings (for compatibility reasons). Instead, we
     * use strdup() on both strings */
    const size_t prop_length = FUNC7(prop);
    char *new_class = FUNC6(prop);
    const size_t class_class_index = FUNC5(new_class, prop_length) + 1;

    FUNC1(win->class_instance);
    FUNC1(win->class_class);

    win->class_instance = FUNC4(new_class, prop_length);
    if (class_class_index < prop_length)
        win->class_class = FUNC4(new_class + class_class_index, prop_length - class_class_index);
    else
        win->class_class = NULL;
    FUNC2("WM_CLASS changed to %s (instance), %s (class)\n",
        win->class_instance, win->class_class);

    FUNC3(prop);
}