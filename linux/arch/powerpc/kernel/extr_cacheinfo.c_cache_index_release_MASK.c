#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct cache_index_dir {TYPE_1__* cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_index_dir*) ; 
 struct cache_index_dir* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kobject *kobj)
{
	struct cache_index_dir *index;

	index = FUNC2(kobj);

	FUNC3("freeing index directory for L%d %s cache\n",
		 index->cache->level, FUNC0(index->cache));

	FUNC1(index);
}