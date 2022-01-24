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
struct cache {int /*<<< orphan*/  ofnode; int /*<<< orphan*/  list; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cache*) ; 

__attribute__((used)) static void FUNC6(struct cache *cache)
{
	if (!cache)
		return;

	FUNC4("freeing L%d %s cache for %pOF\n", cache->level,
		 FUNC0(cache), cache->ofnode);

	FUNC5(cache);
	FUNC2(&cache->list);
	FUNC3(cache->ofnode);
	FUNC1(cache);
}