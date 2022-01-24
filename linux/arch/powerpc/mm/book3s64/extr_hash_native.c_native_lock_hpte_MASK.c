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
struct hash_pte {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPTE_LOCK_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline void FUNC5(struct hash_pte *hptep)
{
	unsigned long *word = (unsigned long *)&hptep->v;

	while (1) {
		if (!FUNC3(HPTE_LOCK_BIT, word))
			break;
		FUNC0();
		while(FUNC4(HPTE_LOCK_BIT, word))
			FUNC1();
		FUNC2();
	}
}