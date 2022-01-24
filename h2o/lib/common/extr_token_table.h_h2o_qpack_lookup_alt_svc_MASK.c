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
    if (FUNC1(value.base, value.len, FUNC0("clear"))) {
        *is_exact = 1;
        return 83;
    }
    *is_exact = 0;
    return 83;
}