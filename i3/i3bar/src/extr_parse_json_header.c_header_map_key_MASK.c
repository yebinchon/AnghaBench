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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  KEY_CLICK_EVENTS ; 
 int /*<<< orphan*/  KEY_CONT_SIGNAL ; 
 int /*<<< orphan*/  KEY_STOP_SIGNAL ; 
 int /*<<< orphan*/  KEY_VERSION ; 
 int /*<<< orphan*/  current_key ; 

__attribute__((used)) static int FUNC1(void *ctx, const unsigned char *stringval, size_t stringlen) {
    if (FUNC0("version")) {
        current_key = KEY_VERSION;
    } else if (FUNC0("stop_signal")) {
        current_key = KEY_STOP_SIGNAL;
    } else if (FUNC0("cont_signal")) {
        current_key = KEY_CONT_SIGNAL;
    } else if (FUNC0("click_events")) {
        current_key = KEY_CLICK_EVENTS;
    }
    return 1;
}