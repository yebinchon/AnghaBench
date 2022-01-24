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
struct mem {int dummy; } ;
typedef  scalar_t__ pages_t ;
typedef  scalar_t__ page_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct mem*,scalar_t__) ; 
 int FUNC1 (struct mem*,scalar_t__,scalar_t__) ; 

int FUNC2(struct mem *mem, page_t start, pages_t pages) {
    for (page_t page = start; page < start + pages; page++)
        if (FUNC0(mem, page) == NULL)
            return -1;
    return FUNC1(mem, start, pages);
}