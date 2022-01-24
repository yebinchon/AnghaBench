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
struct unw_script {unsigned long ip; unsigned long pr_val; unsigned long pr_mask; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline long
FUNC2 (struct unw_script *script, unsigned long ip, unsigned long pr)
{
	FUNC0(&script->lock);
	if (ip == script->ip && ((pr ^ script->pr_val) & script->pr_mask) == 0)
		/* keep the read lock... */
		return 1;
	FUNC1(&script->lock);
	return 0;
}