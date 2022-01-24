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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(uint32_t status, uint32_t l2_err,
			  uint32_t memio_err)
{
	FUNC3("Bus watcher error counters: %08x %08x\n", l2_err, memio_err);
	FUNC3("\nLast recorded signature:\n");
	FUNC3("Request %02x from %d, answered by %d with Dcode %d\n",
	       (unsigned int)(FUNC2(status) & 0x3f),
	       (int)(FUNC2(status) >> 6),
	       (int)FUNC1(status),
	       (int)FUNC0(status));
}