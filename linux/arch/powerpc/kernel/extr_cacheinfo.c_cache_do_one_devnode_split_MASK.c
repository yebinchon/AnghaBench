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
struct device_node {int dummy; } ;
struct cache {struct cache* next_local; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_TYPE_DATA ; 
 int /*<<< orphan*/  CACHE_TYPE_INSTRUCTION ; 
 struct cache* FUNC0 (int /*<<< orphan*/ ,int,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 

__attribute__((used)) static struct cache *FUNC3(struct device_node *node,
						int level)
{
	struct cache *dcache, *icache;

	FUNC1("creating L%d dcache and icache for %pOF\n", level,
		 node);

	dcache = FUNC0(CACHE_TYPE_DATA, level, node);
	icache = FUNC0(CACHE_TYPE_INSTRUCTION, level, node);

	if (!dcache || !icache)
		goto err;

	dcache->next_local = icache;

	return dcache;
err:
	FUNC2(dcache);
	FUNC2(icache);
	return NULL;
}