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
struct n2rng {int /*<<< orphan*/ * scratch_control; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (unsigned long,int) ; 

__attribute__((used)) static unsigned long FUNC2(struct n2rng *np, int unit)
{
	unsigned long ra = FUNC0(&np->scratch_control[0]);

	return FUNC1(ra, unit);
}