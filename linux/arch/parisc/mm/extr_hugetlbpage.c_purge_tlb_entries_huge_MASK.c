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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HPAGE_MASK ; 
 int HPAGE_SHIFT ; 
 int REAL_HPAGE_SHIFT ; 
 unsigned long _HUGE_PAGE_SIZE_ENCODING_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct mm_struct *mm, unsigned long addr)
{
	int i;

	/* We may use multiple physical huge pages (e.g. 2x1 MB) to emulate
	 * Linux standard huge pages (e.g. 2 MB) */
	FUNC0(REAL_HPAGE_SHIFT > HPAGE_SHIFT);

	addr &= HPAGE_MASK;
	addr |= _HUGE_PAGE_SIZE_ENCODING_DEFAULT;

	for (i = 0; i < (1 << (HPAGE_SHIFT-REAL_HPAGE_SHIFT)); i++) {
		FUNC1(mm, addr);
		addr += (1UL << REAL_HPAGE_SHIFT);
	}
}