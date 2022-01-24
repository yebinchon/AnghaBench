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
struct crng_state {unsigned long* state; scalar_t__ init_time; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ CRNG_RESEED_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 int crng_init ; 
 int /*<<< orphan*/  input_pool ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct crng_state primary_crng ; 
 unsigned long FUNC8 () ; 
 scalar_t__ trust_cpu ; 

__attribute__((used)) static void FUNC9(struct crng_state *crng)
{
	int		i;
	int		arch_init = 1;
	unsigned long	rv;

	FUNC5(&crng->state[0], "expand 32-byte k", 16);
	if (crng == &primary_crng)
		FUNC0(&input_pool, &crng->state[4],
				 sizeof(__u32) * 12, 0);
	else
		FUNC1(&crng->state[4], sizeof(__u32) * 12);
	for (i = 4; i < 16; i++) {
		if (!FUNC3(&rv) &&
		    !FUNC2(&rv)) {
			rv = FUNC8();
			arch_init = 0;
		}
		crng->state[i] ^= rv;
	}
	if (trust_cpu && arch_init && crng == &primary_crng) {
		FUNC4();
		FUNC6();
		crng_init = 2;
		FUNC7("random: crng done (trusting CPU's manufacturer)\n");
	}
	crng->init_time = jiffies - CRNG_RESEED_INTERVAL - 1;
}