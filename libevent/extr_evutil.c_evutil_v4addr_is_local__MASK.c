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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 scalar_t__ const INADDR_ANY ; 
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (scalar_t__ const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(const struct in_addr *in)
{
	const ev_uint32_t addr = FUNC3(in->s_addr);
	return addr == INADDR_ANY ||
		FUNC2(addr) ||
		FUNC1(addr) ||
		FUNC0(addr);
}