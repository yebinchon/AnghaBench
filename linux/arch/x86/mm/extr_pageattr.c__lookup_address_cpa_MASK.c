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
struct cpa_data {scalar_t__ pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,unsigned long,unsigned int*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static pte_t *FUNC3(struct cpa_data *cpa, unsigned long address,
				  unsigned int *level)
{
	if (cpa->pgd)
		return FUNC1(cpa->pgd + FUNC2(address),
					       address, level);

	return FUNC0(address, level);
}