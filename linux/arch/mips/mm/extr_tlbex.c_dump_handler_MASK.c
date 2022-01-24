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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static inline void FUNC1(const char *symbol, const void *start, const void *end)
{
	unsigned int count = (end - start) / sizeof(u32);
	const u32 *handler = start;
	int i;

	FUNC0("LEAF(%s)\n", symbol);

	FUNC0("\t.set push\n");
	FUNC0("\t.set noreorder\n");

	for (i = 0; i < count; i++)
		FUNC0("\t.word\t0x%08x\t\t# %p\n", handler[i], &handler[i]);

	FUNC0("\t.set\tpop\n");

	FUNC0("\tEND(%s)\n", symbol);
}