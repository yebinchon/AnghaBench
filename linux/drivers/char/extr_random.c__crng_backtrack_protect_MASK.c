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
struct crng_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ CHACHA_BLOCK_SIZE ; 
 scalar_t__ CHACHA_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct crng_state *crng,
				    __u8 tmp[CHACHA_BLOCK_SIZE], int used)
{
	unsigned long	flags;
	__u32		*s, *d;
	int		i;

	used = FUNC1(used, sizeof(__u32));
	if (used + CHACHA_KEY_SIZE > CHACHA_BLOCK_SIZE) {
		FUNC0(tmp);
		used = 0;
	}
	FUNC2(&crng->lock, flags);
	s = (__u32 *) &tmp[used];
	d = &crng->state[4];
	for (i=0; i < 8; i++)
		*d++ ^= *s++;
	FUNC3(&crng->lock, flags);
}