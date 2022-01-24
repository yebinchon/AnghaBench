#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_intern_atom_cookie_t ;
struct TYPE_8__ {scalar_t__ owner; } ;
typedef  TYPE_1__ xcb_get_selection_owner_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_selection_owner_cookie_t ;
typedef  int uint32_t ;
struct TYPE_11__ {int black_pixel; } ;
struct TYPE_10__ {int visual_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  atom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  XCB_ATOM_CARDINAL ; 
 int /*<<< orphan*/  XCB_ATOM_VISUALID ; 
 int /*<<< orphan*/  XCB_CURRENT_TIME ; 
 int XCB_CW_BACK_PIXEL ; 
 int XCB_CW_BORDER_PIXEL ; 
 int XCB_CW_COLORMAP ; 
 int XCB_CW_OVERRIDE_REDIRECT ; 
 int /*<<< orphan*/  XCB_PROP_MODE_REPLACE ; 
 int /*<<< orphan*/  XCB_WINDOW_CLASS_INPUT_OUTPUT ; 
 size_t _NET_SYSTEM_TRAY_ORIENTATION ; 
 int _NET_SYSTEM_TRAY_ORIENTATION_HORZ ; 
 size_t _NET_SYSTEM_TRAY_VISUAL ; 
 int /*<<< orphan*/ * atoms ; 
 int colormap ; 
 int /*<<< orphan*/  depth ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_6__* root_screen ; 
 int screen ; 
 scalar_t__ selwin ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_2__* tray_reply ; 
 TYPE_4__* visual_type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  xcb_connection ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcb_root ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void) {
    FUNC0("Initializing system tray functionality\n");
    /* request the tray manager atom for the X11 display we are running on */
    char atomname[FUNC7("_NET_SYSTEM_TRAY_S") + 11];
    FUNC6(atomname, FUNC7("_NET_SYSTEM_TRAY_S") + 11, "_NET_SYSTEM_TRAY_S%d", screen);
    xcb_intern_atom_cookie_t tray_cookie;
    if (tray_reply == NULL)
        tray_cookie = FUNC13(xcb_connection, 0, FUNC7(atomname), atomname);

    /* tray support: we need a window to own the selection */
    selwin = FUNC10(xcb_connection);
    uint32_t selmask = XCB_CW_BACK_PIXEL | XCB_CW_BORDER_PIXEL | XCB_CW_OVERRIDE_REDIRECT | XCB_CW_COLORMAP;
    uint32_t selval[] = {root_screen->black_pixel, root_screen->black_pixel, 1, colormap};
    FUNC9(xcb_connection,
                      depth,
                      selwin,
                      xcb_root,
                      -1, -1,
                      1, 1,
                      0,
                      XCB_WINDOW_CLASS_INPUT_OUTPUT,
                      visual_type->visual_id,
                      selmask,
                      selval);

    uint32_t orientation = _NET_SYSTEM_TRAY_ORIENTATION_HORZ;
    /* set the atoms */
    FUNC8(xcb_connection,
                        XCB_PROP_MODE_REPLACE,
                        selwin,
                        atoms[_NET_SYSTEM_TRAY_ORIENTATION],
                        XCB_ATOM_CARDINAL,
                        32,
                        1,
                        &orientation);
    FUNC8(xcb_connection,
                        XCB_PROP_MODE_REPLACE,
                        selwin,
                        atoms[_NET_SYSTEM_TRAY_VISUAL],
                        XCB_ATOM_VISUALID,
                        32,
                        1,
                        &visual_type->visual_id);

    FUNC4();

    if (tray_reply == NULL) {
        if (!(tray_reply = FUNC14(xcb_connection, tray_cookie, NULL))) {
            FUNC1("Could not get atom %s\n", atomname);
            FUNC2(EXIT_FAILURE);
        }
    }

    FUNC15(xcb_connection,
                            selwin,
                            tray_reply->atom,
                            XCB_CURRENT_TIME);

    /* Verify that we have the selection */
    xcb_get_selection_owner_cookie_t selcookie;
    xcb_get_selection_owner_reply_t *selreply;

    selcookie = FUNC11(xcb_connection, tray_reply->atom);
    if (!(selreply = FUNC12(xcb_connection, selcookie, NULL))) {
        FUNC1("Could not get selection owner for %s\n", atomname);
        FUNC2(EXIT_FAILURE);
    }

    if (selreply->owner != selwin) {
        FUNC1("Could not set the %s selection. "
             "Maybe another tray is already running?\n",
             atomname);
        /* NOTE that this error is not fatal. We just can’t provide tray
         * functionality */
        FUNC3(selreply);
        return;
    }

    FUNC3(selreply);

    FUNC5();
}