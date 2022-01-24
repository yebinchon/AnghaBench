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
struct pdc_mem_read_pdt {int dummy; } ;

/* Variables and functions */
 int PDC_ERROR ; 
 int /*<<< orphan*/  PDC_MEM ; 
 int /*<<< orphan*/  PDC_MEM_READ_PDT ; 
 int PDC_OK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pdc_mem_read_pdt*,unsigned long*,int) ; 
 scalar_t__ parisc_narrow_firmware ; 
 int /*<<< orphan*/  pdc_lock ; 
 unsigned long* pdc_result ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct pdc_mem_read_pdt *pret,
		unsigned long *pdt_entries_ptr)
{
	int retval;
	unsigned long flags;

	FUNC5(&pdc_lock, flags);
	retval = FUNC3(PDC_MEM, PDC_MEM_READ_PDT, FUNC1(pdc_result),
			FUNC1(pdt_entries_ptr));
	if (retval == PDC_OK) {
		FUNC2(pdc_result);
		FUNC4(pret, pdc_result, sizeof(*pret));
	}
	FUNC6(&pdc_lock, flags);

#ifdef CONFIG_64BIT
	/*
	 * 64-bit kernels should not call this PDT function in narrow mode.
	 * The pdt_entries_ptr array above will now contain 32-bit values
	 */
	if (WARN_ON_ONCE((retval == PDC_OK) && parisc_narrow_firmware))
		return PDC_ERROR;
#endif

	return retval;
}