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
struct si_sm_io {int /*<<< orphan*/  io_size; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct si_sm_io*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct si_sm_io *io)
{
	if (io->addr) {
		FUNC0(io->addr);
		FUNC1(io, io->io_size);
	}
}