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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC2(atomic_t *v, unsigned int bits)
{
	unsigned int old, new;

	do {
		old = FUNC1(v);
		new = old ^ bits;
	} while (FUNC0(v, old, new) != old);
	return new;
}