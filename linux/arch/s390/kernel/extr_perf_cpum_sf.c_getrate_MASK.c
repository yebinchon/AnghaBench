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
struct hws_qsi_info_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 unsigned long FUNC1 (struct hws_qsi_info_block*,unsigned long) ; 
 unsigned long FUNC2 (struct hws_qsi_info_block*,unsigned long) ; 
 scalar_t__ FUNC3 (struct hws_qsi_info_block*,unsigned long) ; 
 int /*<<< orphan*/  sfdbg ; 
 scalar_t__ sysctl_perf_event_sample_rate ; 

__attribute__((used)) static unsigned long FUNC4(bool freq, unsigned long sample,
			     struct hws_qsi_info_block *si)
{
	unsigned long rate;

	if (freq) {
		rate = FUNC1(si, sample);
		rate = FUNC2(si, rate);
	} else {
		/* The min/max sampling rates specifies the valid range
		 * of sample periods.  If the specified sample period is
		 * out of range, limit the period to the range boundary.
		 */
		rate = FUNC2(si, sample);

		/* The perf core maintains a maximum sample rate that is
		 * configurable through the sysctl interface.  Ensure the
		 * sampling rate does not exceed this value.  This also helps
		 * to avoid throttling when pushing samples with
		 * perf_event_overflow().
		 */
		if (FUNC3(si, rate) >
		    sysctl_perf_event_sample_rate) {
			FUNC0(sfdbg, 1,
					    "Sampling rate exceeds maximum "
					    "perf sample rate\n");
			rate = 0;
		}
	}
	return rate;
}