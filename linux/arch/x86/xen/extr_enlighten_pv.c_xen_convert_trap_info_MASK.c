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
struct trap_info {scalar_t__ address; } ;
struct desc_ptr {int size; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  gate_desc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ *,struct trap_info*) ; 

__attribute__((used)) static void FUNC2(const struct desc_ptr *desc,
				  struct trap_info *traps)
{
	unsigned in, out, count;

	count = (desc->size+1) / sizeof(gate_desc);
	FUNC0(count > 256);

	for (in = out = 0; in < count; in++) {
		gate_desc *entry = (gate_desc *)(desc->address) + in;

		if (FUNC1(in, entry, &traps[out]))
			out++;
	}
	traps[out].address = 0;
}