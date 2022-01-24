#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ia64_sal_os_state {int dummy; } ;
typedef  int /*<<< orphan*/  slidx_table_t ;
typedef  int /*<<< orphan*/  peidx_table_t ;
struct TYPE_5__ {int cm; scalar_t__ ci; scalar_t__ cc; scalar_t__ bc; scalar_t__ uc; scalar_t__ rc; scalar_t__ tc; scalar_t__ us; } ;
typedef  TYPE_1__ pal_processor_state_info_t ;
struct TYPE_6__ {scalar_t__ bsi; scalar_t__ eb; scalar_t__ ib; } ;
typedef  TYPE_2__ pal_bus_check_info_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,struct ia64_sal_os_state*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(int platform, slidx_table_t *slidx,
			     peidx_table_t *peidx, pal_bus_check_info_t *pbci,
			     struct ia64_sal_os_state *sos)
{
	pal_processor_state_info_t *psp =
		(pal_processor_state_info_t*)FUNC3(peidx);

	/*
	 * Processor recovery status must key off of the PAL recovery
	 * status in the Processor State Parameter.
	 */

	/*
	 * The machine check is corrected.
	 */
	if (psp->cm == 1)
		return FUNC1("machine check is already corrected.");

	/*
	 * The error was not contained.  Software must be reset.
	 */
	if (psp->us || psp->ci == 0)
		return FUNC0("error not contained");

	/*
	 * Look for recoverable TLB check
	 */
	if (psp->tc && !(psp->cc || psp->bc || psp->rc || psp->uc))
		return FUNC5(peidx);

	/*
	 * The cache check and bus check bits have four possible states
	 *   cc bc
	 *    1  1	Memory error, attempt recovery
	 *    1  0	Cache error, attempt recovery
	 *    0  1	I/O error, attempt recovery
	 *    0  0	Other error type, not recovered
	 */
	if (psp->cc == 0 && (psp->bc == 0 || pbci == NULL))
		return FUNC0("No cache or bus check");

	/*
	 * Cannot handle more than one bus check.
	 */
	if (FUNC2(peidx) > 1)
		return FUNC0("Too many bus checks");

	if (pbci->ib)
		return FUNC0("Internal Bus error");
	if (pbci->eb && pbci->bsi > 0)
		return FUNC0("External bus check fatal status");

	/*
	 * This is a local MCA and estimated as a recoverable error.
	 */
	if (platform)
		return FUNC4(slidx, peidx, pbci, sos);

	/*
	 * On account of strange SAL error record, we cannot recover.
	 */
	return FUNC0("Strange SAL record");
}