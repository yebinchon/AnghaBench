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
 int /*<<< orphan*/  DIAG308_LOAD_NORMAL_DUMP ; 
 int /*<<< orphan*/  DIAG308_SET ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *dump_block)
{
	FUNC0(DIAG308_SET, dump_block);
	while (1) {
		if (FUNC0(DIAG308_LOAD_NORMAL_DUMP, NULL) != 0x302)
			break;
		FUNC1(USEC_PER_SEC);
	}
}