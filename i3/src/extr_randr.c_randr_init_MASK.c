#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int major_version; int minor_version; int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ xcb_randr_query_version_reply_t ;
struct TYPE_9__ {int first_event; int /*<<< orphan*/  present; } ;
typedef  TYPE_2__ xcb_query_extension_reply_t ;
typedef  TYPE_1__ xcb_generic_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCB_RANDR_MAJOR_VERSION ; 
 int /*<<< orphan*/  XCB_RANDR_MINOR_VERSION ; 
 int XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE ; 
 int XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE ; 
 int XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY ; 
 int XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int has_randr_1_5 ; 
 int /*<<< orphan*/  outputs ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  root_output ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcb_randr_id ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC12(int *event_base, const bool disable_randr15) {
    const xcb_query_extension_reply_t *extreply;

    root_output = FUNC3(conn);
    FUNC2(&outputs, root_output, outputs);

    extreply = FUNC8(conn, &xcb_randr_id);
    if (!extreply->present) {
        FUNC0("RandR is not present, activating root output.\n");
        FUNC4();
        return;
    }

    xcb_generic_error_t *err;
    xcb_randr_query_version_reply_t *randr_version =
        FUNC10(
            conn, FUNC9(conn, XCB_RANDR_MAJOR_VERSION, XCB_RANDR_MINOR_VERSION), &err);
    if (err != NULL) {
        FUNC1("Could not query RandR version: X11 error code %d\n", err->error_code);
        FUNC5(err);
        FUNC4();
        return;
    }

    has_randr_1_5 = (randr_version->major_version >= 1) &&
                    (randr_version->minor_version >= 5) &&
                    !disable_randr15;

    FUNC5(randr_version);

    FUNC6();

    if (event_base != NULL)
        *event_base = extreply->first_event;

    FUNC11(conn, root,
                           XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE |
                               XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE |
                               XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE |
                               XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY);

    FUNC7(conn);
}