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
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static const char *FUNC1(const char *buf, const char *buf_end, int *value, int *ret)
{
    int v;
    FUNC0();
    if (!('0' <= *buf && *buf <= '9')) {
        *ret = -1;
        return NULL;
    }
    v = 0;
    for (;; ++buf) {
        FUNC0();
        if ('0' <= *buf && *buf <= '9') {
            v = v * 10 + *buf - '0';
        } else {
            break;
        }
    }

    *value = v;
    return buf;
}