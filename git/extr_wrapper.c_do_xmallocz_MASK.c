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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t,int) ; 

__attribute__((used)) static void *FUNC4(size_t size, int gentle)
{
	void *ret;
	if (FUNC3(size, 1)) {
		if (gentle) {
			FUNC2("Data too large to fit into virtual memory space.");
			return NULL;
		} else
			FUNC0("Data too large to fit into virtual memory space.");
	}
	ret = FUNC1(size + 1, gentle);
	if (ret)
		((char*)ret)[size] = 0;
	return ret;
}