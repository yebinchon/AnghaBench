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
typedef  unsigned int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static uint64_t
FUNC2(void)
{
    struct timeval tv;

    if (FUNC0(&tv, NULL) != 0) {
        FUNC1(); /* LCOV_EXCL_LINE */
    }
    return ((uint64_t) tv.tv_sec) * 1000000U + (uint64_t) tv.tv_usec;
}