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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPU_R4000MC ; 
 scalar_t__ CPU_R4000SC ; 
 scalar_t__ CPU_R4400MC ; 
 scalar_t__ CPU_R4400SC ; 
 int /*<<< orphan*/  R4K_INDEX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(void * args)
{
	struct mm_struct *mm = args;

	if (!FUNC1(mm, R4K_INDEX))
		return;

	/*
	 * Kludge alert.  For obscure reasons R4000SC and R4400SC go nuts if we
	 * only flush the primary caches but R1x000 behave sane ...
	 * R4000SC and R4400SC indexed S-cache ops also invalidate primary
	 * caches, so we can bail out early.
	 */
	if (FUNC0() == CPU_R4000SC ||
	    FUNC0() == CPU_R4000MC ||
	    FUNC0() == CPU_R4400SC ||
	    FUNC0() == CPU_R4400MC) {
		FUNC3();
		return;
	}

	FUNC2();
}