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
 scalar_t__ GARBAGE_VALUE ; 
 void* FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,size_t const) ; 

__attribute__((malloc)) void *
FUNC2(const size_t size)
{
    void *ptr;

    if ((ptr = FUNC0(size)) == NULL) {
        return NULL;
    }
    FUNC1(ptr, (int) GARBAGE_VALUE, size);

    return ptr;
}