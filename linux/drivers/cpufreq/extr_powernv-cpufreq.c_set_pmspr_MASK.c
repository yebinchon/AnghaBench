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
 int /*<<< orphan*/  FUNC0 () ; 
#define  SPRN_PMCR 129 
#define  SPRN_PMICR 128 
 int /*<<< orphan*/  FUNC1 (int const,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(unsigned long sprn, unsigned long val)
{
	switch (sprn) {
	case SPRN_PMCR:
		FUNC1(SPRN_PMCR, val);
		return;

	case SPRN_PMICR:
		FUNC1(SPRN_PMICR, val);
		return;
	}
	FUNC0();
}