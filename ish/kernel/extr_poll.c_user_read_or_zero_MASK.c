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
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int _EFAULT ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,void*,size_t) ; 

__attribute__((used)) static int FUNC2(addr_t addr, void *data, size_t size) {
    if (addr == 0)
        FUNC0(data, 0, size);
    else if (FUNC1(addr, data, size))
        return _EFAULT;
    return 0;
}