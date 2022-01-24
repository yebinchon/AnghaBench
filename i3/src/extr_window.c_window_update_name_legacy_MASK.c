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
typedef  char xcb_get_property_reply_t ;
struct TYPE_6__ {int name_x_changed; int /*<<< orphan*/ * name; int /*<<< orphan*/  id; scalar_t__ uses_net_wm_name; } ;
typedef  TYPE_1__ i3Window ;
typedef  int /*<<< orphan*/  i3String ;
struct TYPE_7__ {int /*<<< orphan*/ * title_format; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*) ; 

void FUNC14(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == NULL || FUNC13(prop) == 0) {
        FUNC0("WM_NAME not set (_NET_WM_NAME is what you want anyways).\n");
        FUNC1(prop);
        return;
    }

    /* ignore update when the window is known to already have a UTF-8 name */
    if (win->uses_net_wm_name) {
        FUNC7(prop);
        return;
    }

    FUNC9(win->name);
    const int len = FUNC13(prop);
    char *name = FUNC11(FUNC12(prop), len);
    win->name = FUNC10(name);
    FUNC7(name);

    Con *con = FUNC4(win->id);
    if (con != NULL && con->title_format != NULL) {
        i3String *name = FUNC5(con);
        FUNC6(win->id, FUNC8(name));
        FUNC2(name);
    }

    FUNC3("WM_NAME changed to \"%s\"\n", FUNC8(win->name));
    FUNC3("Using legacy window title. Note that in order to get Unicode window "
        "titles in i3, the application has to set _NET_WM_NAME (UTF-8)\n");

    win->name_x_changed = true;

    FUNC7(prop);
}