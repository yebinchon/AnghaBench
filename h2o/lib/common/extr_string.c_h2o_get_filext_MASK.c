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

h2o_iovec_t FUNC1(const char *path, size_t len)
{
    const char *end = path + len, *p = end;

    while (--p != path) {
        if (*p == '.') {
            return FUNC0(p + 1, end - (p + 1));
        } else if (*p == '/') {
            break;
        }
    }
    return FUNC0(NULL, 0);
}