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
typedef  int /*<<< orphan*/  Elf32_Rel ;
typedef  int /*<<< orphan*/  Elf32_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool FUNC2(Elf32_Addr base, const Elf32_Rel *rel, int num)
{
	const Elf32_Rel *prev;

	/*
	 * Entries are sorted by type and symbol index. That means that,
	 * if a duplicate entry exists, it must be in the preceding
	 * slot.
	 */
	if (!num)
		return false;

	prev = rel + num - 1;
	return FUNC0(rel + num, prev) == 0 &&
	       FUNC1(base, prev);
}