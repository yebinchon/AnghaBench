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
typedef  int /*<<< orphan*/  xcb_key_symbols_t ;
typedef  int /*<<< orphan*/  xcb_get_modifier_mapping_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_modifier_mapping_cookie_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint32_t FUNC5(uint32_t keysym, xcb_key_symbols_t *symbols) {
    xcb_get_modifier_mapping_cookie_t cookie;
    xcb_get_modifier_mapping_reply_t *modmap_r;

    FUNC2(conn);

    /* Get the current modifier mapping (this is blocking!) */
    cookie = FUNC3(conn);
    if (!(modmap_r = FUNC4(conn, cookie, NULL)))
        return 0;

    uint32_t result = FUNC1(keysym, symbols, modmap_r);
    FUNC0(modmap_r);
    return result;
}