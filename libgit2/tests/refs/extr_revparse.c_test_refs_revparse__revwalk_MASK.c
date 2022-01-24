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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC1("master^{/not found in any commit}", NULL);
	FUNC1("master^{/merge}", NULL);
	FUNC0("master^{/((}");

	FUNC1("master^{/anoth}", "5b5b025afb0b4c913b4c338a42934a3863bf3644");
	FUNC1("master^{/Merge}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
	FUNC1("br2^{/Merge}", "a4a7dce85cf63874e984719f4fdd239f5145052f");
	FUNC1("master^{/fo.rth}", "9fd738e8f7967c078dceed8190330fc8648ee56a");
}