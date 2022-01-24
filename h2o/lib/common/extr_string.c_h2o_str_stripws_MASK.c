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
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 

h2o_iovec_t FUNC2(const char *s, size_t len)
{
    const char *end = s + len;

    while (s != end) {
        if (!FUNC1(*s))
            break;
        ++s;
    }
    while (s != end) {
        if (!FUNC1(end[-1]))
            break;
        --end;
    }
    return FUNC0(s, end - s);
}