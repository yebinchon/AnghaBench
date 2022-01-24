#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC2(h2o_iovec_t value, int *is_exact)
{
    if (FUNC1(value.base, value.len, FUNC0("103"))) {
        *is_exact = 1;
        return 24;
    }
    if (FUNC1(value.base, value.len, FUNC0("200"))) {
        *is_exact = 1;
        return 25;
    }
    if (FUNC1(value.base, value.len, FUNC0("304"))) {
        *is_exact = 1;
        return 26;
    }
    if (FUNC1(value.base, value.len, FUNC0("404"))) {
        *is_exact = 1;
        return 27;
    }
    if (FUNC1(value.base, value.len, FUNC0("503"))) {
        *is_exact = 1;
        return 28;
    }
    if (FUNC1(value.base, value.len, FUNC0("100"))) {
        *is_exact = 1;
        return 63;
    }
    if (FUNC1(value.base, value.len, FUNC0("204"))) {
        *is_exact = 1;
        return 64;
    }
    if (FUNC1(value.base, value.len, FUNC0("206"))) {
        *is_exact = 1;
        return 65;
    }
    if (FUNC1(value.base, value.len, FUNC0("302"))) {
        *is_exact = 1;
        return 66;
    }
    if (FUNC1(value.base, value.len, FUNC0("400"))) {
        *is_exact = 1;
        return 67;
    }
    if (FUNC1(value.base, value.len, FUNC0("403"))) {
        *is_exact = 1;
        return 68;
    }
    if (FUNC1(value.base, value.len, FUNC0("421"))) {
        *is_exact = 1;
        return 69;
    }
    if (FUNC1(value.base, value.len, FUNC0("425"))) {
        *is_exact = 1;
        return 70;
    }
    if (FUNC1(value.base, value.len, FUNC0("500"))) {
        *is_exact = 1;
        return 71;
    }
    *is_exact = 0;
    return 24;
}