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
struct xkb_rule_names {int /*<<< orphan*/ * options; int /*<<< orphan*/ * variant; int /*<<< orphan*/ * layout; int /*<<< orphan*/ * model; int /*<<< orphan*/ * rules; } ;
struct xkb_keymap {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  conn ; 
 int FUNC2 (struct xkb_rule_names*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * xkb_context ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 struct xkb_keymap* xkb_keymap ; 
 struct xkb_keymap* FUNC5 (int /*<<< orphan*/ *,struct xkb_rule_names*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xkb_keymap*) ; 
 scalar_t__ xkb_supported ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct xkb_keymap* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool FUNC9(void) {
    if (xkb_context == NULL) {
        if ((xkb_context = FUNC4(0)) == NULL) {
            FUNC0("Could not create xkbcommon context\n");
            return false;
        }
    }

    struct xkb_keymap *new_keymap = NULL;
    int32_t device_id;
    if (xkb_supported && (device_id = FUNC7(conn)) > -1) {
        if ((new_keymap = FUNC8(xkb_context, conn, device_id, 0)) == NULL) {
            FUNC0("xkb_x11_keymap_new_from_device failed\n");
            return false;
        }
    } else {
        /* Likely there is no XKB support on this server, possibly because it
         * is a VNC server. */
        FUNC1("No XKB / core keyboard device? Assembling keymap from local RMLVO.\n");
        struct xkb_rule_names names = {
            .rules = NULL,
            .model = NULL,
            .layout = NULL,
            .variant = NULL,
            .options = NULL};
        if (FUNC2(&names) == -1) {
            FUNC0("Could not get _XKB_RULES_NAMES atom from root window, falling back to defaults.\n");
            /* Using NULL for the fields of xkb_rule_names. */
        }
        new_keymap = FUNC5(xkb_context, &names, 0);
        FUNC3((char *)names.rules);
        FUNC3((char *)names.model);
        FUNC3((char *)names.layout);
        FUNC3((char *)names.variant);
        FUNC3((char *)names.options);
        if (new_keymap == NULL) {
            FUNC0("xkb_keymap_new_from_names failed\n");
            return false;
        }
    }
    FUNC6(xkb_keymap);
    xkb_keymap = new_keymap;

    return true;
}