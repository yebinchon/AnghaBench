#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trap_info {scalar_t__ address; } ;
typedef  int /*<<< orphan*/  gate_desc ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct trap_info*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/  const*,struct trap_info*) ; 
 TYPE_1__ idt_desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(gate_desc *dt, int entrynum, const gate_desc *g)
{
	unsigned long p = (unsigned long)&dt[entrynum];
	unsigned long start, end;

	FUNC7(dt, entrynum, g);

	FUNC5();

	start = FUNC2(idt_desc.address);
	end = start + FUNC2(idt_desc.size) + 1;

	FUNC8();

	FUNC4(dt, entrynum, g);

	if (p >= start && (p + 8) <= end) {
		struct trap_info info[2];

		info[1].address = 0;

		if (FUNC3(entrynum, g, &info[0]))
			if (FUNC1(info))
				FUNC0();
	}

	FUNC6();
}