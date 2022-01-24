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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

__attribute__((used)) static char *
FUNC5(tsdn_t *tsdn, const char *thread_name) {
	char *ret;
	size_t size;

	if (thread_name == NULL) {
		return NULL;
	}

	size = FUNC3(thread_name) + 1;
	if (size == 1) {
		return "";
	}

	ret = FUNC1(tsdn, size, FUNC4(size), false, NULL, true,
	    FUNC0(TSDN_NULL, 0, true), true);
	if (ret == NULL) {
		return NULL;
	}
	FUNC2(ret, thread_name, size);
	return ret;
}