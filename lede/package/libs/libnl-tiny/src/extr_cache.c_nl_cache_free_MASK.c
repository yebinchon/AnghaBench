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
struct nl_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_cache*) ; 

void FUNC4(struct nl_cache *cache)
{
	if (!cache)
		return;

	FUNC2(cache);
	FUNC0(1, "Freeing cache %p <%s>...\n", cache, FUNC3(cache));
	FUNC1(cache);
}