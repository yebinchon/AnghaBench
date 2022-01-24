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
typedef  int u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ KN01_CSR ; 
 int KN01_CSR_MEMERR ; 
 scalar_t__ KN01_SLOT_BASE ; 
 int cached_kn01_csr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kn01_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	volatile u16 *csr = (void *)FUNC0(KN01_SLOT_BASE + KN01_CSR);
	unsigned long flags;

	FUNC2(&kn01_lock, flags);

	*csr = cached_kn01_csr | KN01_CSR_MEMERR;	/* Clear bus IRQ. */
	FUNC1();

	FUNC3(&kn01_lock, flags);
}