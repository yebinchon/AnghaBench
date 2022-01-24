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

/* Variables and functions */
 int /*<<< orphan*/ * cpu_foreign_map ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void (*) (void*),void*,int) ; 
 size_t FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(unsigned int type,
				   void (*func)(void *info), void *info)
{
	FUNC0();
	if (FUNC2(type))
		FUNC3(&cpu_foreign_map[FUNC4()],
				       func, info, 1);
	func(info);
	FUNC1();
}