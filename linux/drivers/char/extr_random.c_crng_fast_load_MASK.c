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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 size_t CHACHA_KEY_SIZE ; 
 size_t CRNG_INIT_CNT_THRESH ; 
 int crng_init ; 
 size_t crng_init_cnt ; 
 int /*<<< orphan*/  crng_init_wait ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ primary_crng ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *cp, size_t len)
{
	unsigned long flags;
	char *p;

	if (!FUNC2(&primary_crng.lock, flags))
		return 0;
	if (crng_init != 0) {
		FUNC3(&primary_crng.lock, flags);
		return 0;
	}
	p = (unsigned char *) &primary_crng.state[4];
	while (len > 0 && crng_init_cnt < CRNG_INIT_CNT_THRESH) {
		p[crng_init_cnt % CHACHA_KEY_SIZE] ^= *cp;
		cp++; crng_init_cnt++; len--;
	}
	FUNC3(&primary_crng.lock, flags);
	if (crng_init_cnt >= CRNG_INIT_CNT_THRESH) {
		FUNC0();
		crng_init = 1;
		FUNC4(&crng_init_wait);
		FUNC1("random: fast init done\n");
	}
	return 1;
}