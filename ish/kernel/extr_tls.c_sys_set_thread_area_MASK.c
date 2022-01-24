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
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(addr_t u_info) {
    FUNC0("set_thread_area(0x%x)", u_info);
    return FUNC1(current, u_info);
}