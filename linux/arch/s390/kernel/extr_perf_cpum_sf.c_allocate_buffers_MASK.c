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
struct hws_basic_entry {int dummy; } ;
struct hw_perf_event {int dummy; } ;
struct cpu_hw_sf {int /*<<< orphan*/  sfb; int /*<<< orphan*/  qsi; } ;

/* Variables and functions */
 unsigned long CPUM_SF_MIN_SDB ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct hw_perf_event*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,size_t,struct cpu_hw_sf*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cpu_hw_sf*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct hw_perf_event*) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static int FUNC9(struct cpu_hw_sf *cpuhw, struct hw_perf_event *hwc)
{
	unsigned long n_sdb, freq, factor;
	size_t sample_size;

	/* Calculate sampling buffers using 4K pages
	 *
	 *    1. Determine the sample data size which depends on the used
	 *	 sampling functions, for example, basic-sampling or
	 *	 basic-sampling with diagnostic-sampling.
	 *
	 *    2. Use the sampling frequency as input.  The sampling buffer is
	 *	 designed for almost one second.  This can be adjusted through
	 *	 the "factor" variable.
	 *	 In any case, alloc_sampling_buffer() sets the Alert Request
	 *	 Control indicator to trigger a measurement-alert to harvest
	 *	 sample-data-blocks (sdb).
	 *
	 *    3. Compute the number of sample-data-blocks and ensure a minimum
	 *	 of CPUM_SF_MIN_SDB.  Also ensure the upper limit does not
	 *	 exceed a "calculated" maximum.  The symbolic maximum is
	 *	 designed for basic-sampling only and needs to be increased if
	 *	 diagnostic-sampling is active.
	 *	 See also the remarks for these symbolic constants.
	 *
	 *    4. Compute the number of sample-data-block-tables (SDBT) and
	 *	 ensure a minimum of CPUM_SF_MIN_SDBT (one table can manage up
	 *	 to 511 SDBs).
	 */
	sample_size = sizeof(struct hws_basic_entry);
	freq = FUNC4(&cpuhw->qsi, FUNC1(hwc));
	factor = 1;
	n_sdb = FUNC0(freq, factor * ((PAGE_SIZE-64) / sample_size));
	if (n_sdb < CPUM_SF_MIN_SDB)
		n_sdb = CPUM_SF_MIN_SDB;

	/* If there is already a sampling buffer allocated, it is very likely
	 * that the sampling facility is enabled too.  If the event to be
	 * initialized requires a greater sampling buffer, the allocation must
	 * be postponed.  Changing the sampling buffer requires the sampling
	 * facility to be in the disabled state.  So, account the number of
	 * required SDBs and let cpumsf_pmu_enable() resize the buffer just
	 * before the event is started.
	 */
	FUNC6(n_sdb, hwc);
	if (FUNC5(cpuhw))
		return 0;

	FUNC3(sfdbg, 3,
			    "allocate_buffers: rate=%lu f=%lu sdb=%lu/%lu"
			    " sample_size=%lu cpuhw=%p\n",
			    FUNC1(hwc), freq, n_sdb, FUNC7(hwc),
			    sample_size, cpuhw);

	return FUNC2(&cpuhw->sfb,
				     FUNC8(&cpuhw->sfb, hwc));
}