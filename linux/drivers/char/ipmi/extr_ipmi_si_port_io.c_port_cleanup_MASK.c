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
struct si_sm_io {unsigned int addr_data; int io_size; int regspacing; int /*<<< orphan*/  regsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct si_sm_io *io)
{
	unsigned int addr = io->addr_data;
	int          idx;

	if (addr) {
		for (idx = 0; idx < io->io_size; idx++)
			FUNC0(addr + idx * io->regspacing,
				       io->regsize);
	}
}