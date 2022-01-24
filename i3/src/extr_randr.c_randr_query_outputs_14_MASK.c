#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_timestamp_t ;
typedef  int /*<<< orphan*/  xcb_randr_output_t ;
struct TYPE_9__ {int /*<<< orphan*/  config_timestamp; } ;
typedef  TYPE_1__ xcb_randr_get_screen_resources_current_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_current_cookie_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_output_primary_cookie_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_output_info_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_output_info_cookie_t ;
struct TYPE_10__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const,TYPE_1__*) ; 
 TYPE_5__* primary ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void) {
    FUNC0("Querying outputs using RandR ≤ 1.4\n");

    /* Get screen resources (primary output, crtcs, outputs, modes) */
    xcb_randr_get_screen_resources_current_cookie_t rcookie;
    rcookie = FUNC9(conn, root);
    xcb_randr_get_output_primary_cookie_t pcookie;
    pcookie = FUNC7(conn, root);

    if ((primary = FUNC8(conn, pcookie, NULL)) == NULL)
        FUNC1("Could not get RandR primary output\n");
    else
        FUNC0("primary output is %08x\n", primary->output);

    xcb_randr_get_screen_resources_current_reply_t *res =
        FUNC12(conn, rcookie, NULL);
    if (res == NULL) {
        FUNC1("Could not query screen resources.\n");
        return;
    }

    /* timestamp of the configuration so that we get consistent replies to all
     * requests (if the configuration changes between our different calls) */
    const xcb_timestamp_t cts = res->config_timestamp;

    const int len = FUNC11(res);

    /* an output is VGA-1, LVDS-1, etc. (usually physical video outputs) */
    xcb_randr_output_t *randr_outputs = FUNC10(res);

    /* Request information for each output */
    xcb_randr_get_output_info_cookie_t ocookie[len];
    for (int i = 0; i < len; i++)
        ocookie[i] = FUNC5(conn, randr_outputs[i], cts);

    /* Loop through all outputs available for this X11 screen */
    for (int i = 0; i < len; i++) {
        xcb_randr_get_output_info_reply_t *output;

        if ((output = FUNC6(conn, ocookie[i], NULL)) == NULL)
            continue;

        FUNC4(conn, randr_outputs[i], output, cts, res);
        FUNC3(output);
    }

    FUNC2(res);
}