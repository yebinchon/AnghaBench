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
typedef  int u32 ;
struct cpuinfo_x86 {int dummy; } ;
struct TYPE_2__ {scalar_t__ succor; scalar_t__ smca; } ;

/* Variables and functions */
 int MASK_CNTP_HI ; 
 int MASK_LOCKED_HI ; 
 int MASK_VALID_HI ; 
 unsigned int NR_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*,unsigned int) ; 
 int FUNC2 (int,int,int,unsigned int,unsigned int,unsigned int) ; 
 TYPE_1__ mce_flags ; 
 int /*<<< orphan*/  mce_num_banks ; 
 int FUNC3 (unsigned int,unsigned int,int,int,int) ; 
 scalar_t__ FUNC4 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct cpuinfo_x86 *c)
{
	unsigned int bank, block, cpu = FUNC6();
	u32 low = 0, high = 0, address = 0;
	int offset = -1;


	for (bank = 0; bank < FUNC7(mce_num_banks); ++bank) {
		if (mce_flags.smca)
			FUNC5(bank, cpu);

		FUNC1(c, bank);

		for (block = 0; block < NR_BLOCKS; ++block) {
			address = FUNC2(address, low, high, bank, block, cpu);
			if (!address)
				break;

			if (FUNC4(address, &low, &high))
				break;

			if (!(high & MASK_VALID_HI))
				continue;

			if (!(high & MASK_CNTP_HI)  ||
			     (high & MASK_LOCKED_HI))
				continue;

			offset = FUNC3(bank, block, address, offset, high);
		}
	}

	if (mce_flags.succor)
		FUNC0(c);
}