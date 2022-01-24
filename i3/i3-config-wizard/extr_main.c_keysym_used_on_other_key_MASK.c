#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xcb_keycode_t ;
struct TYPE_2__ {scalar_t__ min_keycode; scalar_t__ max_keycode; } ;
typedef  scalar_t__ KeySym ;

/* Variables and functions */
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  keysyms ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static bool FUNC2(KeySym sym, xcb_keycode_t except_keycode) {
    xcb_keycode_t i,
        min_keycode = FUNC0(conn)->min_keycode,
        max_keycode = FUNC0(conn)->max_keycode;

    for (i = min_keycode; i && i <= max_keycode; i++) {
        if (i == except_keycode)
            continue;
        for (int level = 0; level < 4; level++) {
            if (FUNC1(keysyms, i, level) != sym)
                continue;
            return true;
        }
    }
    return false;
}