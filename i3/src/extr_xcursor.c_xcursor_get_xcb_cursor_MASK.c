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
typedef  enum xcursor_cursor_t { ____Placeholder_xcursor_cursor_t } xcursor_cursor_t ;

/* Variables and functions */
 int XCURSOR_CURSOR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* xcb_cursors ; 

int FUNC1(enum xcursor_cursor_t c) {
    FUNC0(c < XCURSOR_CURSOR_MAX);
    return xcb_cursors[c];
}