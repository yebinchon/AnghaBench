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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(pthread_t thread, const char *name)
{
	int err;
	void *tret;
	err = FUNC2(thread, &tret);
	if (!tret) {
		FUNC1(FUNC0("%s thread failed"), name);
		return 1;
	}
	if (err) {
		FUNC1(FUNC0("%s thread failed to join: %s"), name, FUNC3(err));
		return 1;
	}
	return 0;
}