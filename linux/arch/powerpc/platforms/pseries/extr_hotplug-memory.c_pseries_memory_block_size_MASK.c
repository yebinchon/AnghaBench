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
struct resource {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int MIN_MEMORY_BLOCK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  pseries ; 
 unsigned int FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 

unsigned long FUNC8(void)
{
	struct device_node *np;
	unsigned int memblock_size = MIN_MEMORY_BLOCK_SIZE;
	struct resource r;

	np = FUNC3("/ibm,dynamic-reconfiguration-memory");
	if (np) {
		const __be64 *size;

		size = FUNC4(np, "ibm,lmb-size", NULL);
		if (size)
			memblock_size = FUNC0(size);
		FUNC5(np);
	} else  if (FUNC1(pseries)) {
		/* This fallback really only applies to pseries */
		unsigned int memzero_size = 0;

		np = FUNC3("/memory@0");
		if (np) {
			if (!FUNC2(np, 0, &r))
				memzero_size = FUNC6(&r);
			FUNC5(np);
		}

		if (memzero_size) {
			/* We now know the size of memory@0, use this to find
			 * the first memoryblock and get its size.
			 */
			char buf[64];

			FUNC7(buf, "/memory@%x", memzero_size);
			np = FUNC3(buf);
			if (np) {
				if (!FUNC2(np, 0, &r))
					memblock_size = FUNC6(&r);
				FUNC5(np);
			}
		}
	}
	return memblock_size;
}