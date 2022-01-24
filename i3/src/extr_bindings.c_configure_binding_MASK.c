#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct Mode {int /*<<< orphan*/  bindings; } ;
struct TYPE_7__ {long keycode; int event_state_mask; int /*<<< orphan*/  keycodes_head; void* command; void* input_type; void* symbol; int /*<<< orphan*/  exclude_titlebar; int /*<<< orphan*/  whole_window; int /*<<< orphan*/  border; int /*<<< orphan*/  release; } ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 void* B_KEYBOARD ; 
 void* B_MOUSE ; 
 int /*<<< orphan*/  B_UPON_KEYPRESS ; 
 int /*<<< orphan*/  B_UPON_KEYRELEASE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int I3_XKB_GROUP_MASK_1 ; 
 int I3_XKB_GROUP_MASK_2 ; 
 int I3_XKB_GROUP_MASK_3 ; 
 int I3_XKB_GROUP_MASK_4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bindings ; 
 int FUNC5 (char const*) ; 
 struct Mode* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,long*,int) ; 
 TYPE_1__* FUNC8 (int,int) ; 
 void* FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

Binding *FUNC12(const char *bindtype, const char *modifiers, const char *input_code,
                           const char *release, const char *border, const char *whole_window,
                           const char *exclude_titlebar, const char *command, const char *modename,
                           bool pango_markup) {
    Binding *new_binding = FUNC8(1, sizeof(Binding));
    FUNC0("Binding %p bindtype %s, modifiers %s, input code %s, release %s\n", new_binding, bindtype, modifiers, input_code, release);
    new_binding->release = (release != NULL ? B_UPON_KEYRELEASE : B_UPON_KEYPRESS);
    new_binding->border = (border != NULL);
    new_binding->whole_window = (whole_window != NULL);
    new_binding->exclude_titlebar = (exclude_titlebar != NULL);
    if (FUNC10(bindtype, "bindsym") == 0) {
        new_binding->input_type = (FUNC11(input_code, "button", (sizeof("button") - 1)) == 0
                                       ? B_MOUSE
                                       : B_KEYBOARD);

        new_binding->symbol = FUNC9(input_code);
    } else {
        long keycode;
        if (!FUNC7(input_code, &keycode, 10)) {
            FUNC1("Could not parse \"%s\" as an input code, ignoring this binding.\n", input_code);
            FUNC2(new_binding);
            return NULL;
        }

        new_binding->keycode = keycode;
        new_binding->input_type = B_KEYBOARD;
    }
    new_binding->command = FUNC9(command);
    new_binding->event_state_mask = FUNC5(modifiers);
    int group_bits_set = 0;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_1)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_2)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_3)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_4)
        group_bits_set++;
    if (group_bits_set > 1)
        FUNC1("Keybinding has more than one Group specified, but your X server is always in precisely one group. The keybinding can never trigger.\n");

    struct Mode *mode = FUNC6(modename, pango_markup);
    FUNC4(mode->bindings, new_binding, bindings);

    FUNC3(&(new_binding->keycodes_head));

    return new_binding;
}