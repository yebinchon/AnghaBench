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
typedef  enum ucode_state { ____Placeholder_ucode_state } ucode_state ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int UCODE_NFOUND ; 
 int UCODE_OK ; 
 int UCODE_UPDATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  late_cpus_in ; 
 int /*<<< orphan*/  late_cpus_out ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  update_lock ; 

__attribute__((used)) static int FUNC8(void *info)
{
	int cpu = FUNC7();
	enum ucode_state err;
	int ret = 0;

	/*
	 * Wait for all CPUs to arrive. A load will not be attempted unless all
	 * CPUs show up.
	 * */
	if (FUNC0(&late_cpus_in, NSEC_PER_SEC))
		return -1;

	FUNC5(&update_lock);
	FUNC1(&err);
	FUNC6(&update_lock);

	/* siblings return UCODE_OK because their engine got updated already */
	if (err > UCODE_NFOUND) {
		FUNC4("Error reloading microcode on CPU %d\n", cpu);
		ret = -1;
	} else if (err == UCODE_UPDATED || err == UCODE_OK) {
		ret = 1;
	}

	/*
	 * Increase the wait timeout to a safe value here since we're
	 * serializing the microcode update and that could take a while on a
	 * large number of CPUs. And that is fine as the *actual* timeout will
	 * be determined by the last CPU finished updating and thus cut short.
	 */
	if (FUNC0(&late_cpus_out, NSEC_PER_SEC * FUNC2()))
		FUNC3("Timeout during microcode update!\n");

	return ret;
}