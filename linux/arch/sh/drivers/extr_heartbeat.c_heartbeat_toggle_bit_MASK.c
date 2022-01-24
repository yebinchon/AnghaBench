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
struct heartbeat_data {int* bit_pos; unsigned int mask; int regsize; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct heartbeat_data *hd,
					unsigned bit, unsigned int inverted)
{
	unsigned int new;

	new = (1 << hd->bit_pos[bit]);
	if (inverted)
		new = ~new;

	new &= hd->mask;

	switch (hd->regsize) {
	case 32:
		new |= FUNC1(hd->base) & ~hd->mask;
		FUNC4(new, hd->base);
		break;
	case 16:
		new |= FUNC0(hd->base) & ~hd->mask;
		FUNC3(new, hd->base);
		break;
	default:
		new |= FUNC2(hd->base) & ~hd->mask;
		FUNC5(new, hd->base);
		break;
	}
}