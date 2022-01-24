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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int event_scan_delay ; 
 int /*<<< orphan*/  event_scan_work ; 
 scalar_t__ first_pass ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int rtas_event_scan_rate ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int surveillance_timeout ; 

__attribute__((used)) static void FUNC10(struct work_struct *w)
{
	unsigned int cpu;

	FUNC3();

	FUNC5();

	/* raw_ OK because just using CPU as starting point. */
	cpu = FUNC2(FUNC8(), cpu_online_mask);
        if (cpu >= nr_cpu_ids) {
		cpu = FUNC1(cpu_online_mask);

		if (first_pass) {
			first_pass = 0;
			event_scan_delay = 30*HZ/rtas_event_scan_rate;

			if (surveillance_timeout != -1) {
				FUNC6("rtasd: enabling surveillance\n");
				FUNC4(surveillance_timeout);
				FUNC6("rtasd: surveillance enabled\n");
			}
		}
	}

	FUNC9(cpu, &event_scan_work,
		FUNC0(event_scan_delay, cpu));

	FUNC7();
}